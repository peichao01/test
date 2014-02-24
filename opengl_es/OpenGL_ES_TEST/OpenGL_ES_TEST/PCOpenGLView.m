//
//  PCOpenGLView.m
//  OpenGL_ES_TEST
//
//  Created by 裴超 on 14-2-18.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

// 此篇教程地址：http://www.cnblogs.com/andyque/archive/2011/08/08/2131019.html

#import "PCOpenGLView.h"

@implementation PCOpenGLView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self setupLayer];
		[self setupContext];
		[self setupRenderBuffer];
		[self setupFrameBuffer];
		[self render];
    }
    return self;
}

+(Class) layerClass {
	return [CAEAGLLayer class];
}

-(void)setupLayer {
	_eaglLayer = (CAEAGLLayer*) self.layer;
	_eaglLayer.opaque = YES;
}

-(void)setupContext {
	EAGLRenderingAPI api = kEAGLRenderingAPIOpenGLES2;
	_context = [[EAGLContext alloc] initWithAPI:api];
	if (!_context) {
		NSLog(@"Failed to initialize OpenGLES 2.0 context");
		exit(1);
	}
	
	if (![EAGLContext setCurrentContext:_context]) {
		NSLog(@"Failed to set current OpenGL context");
		exit(1);
	}
}

-(void)setupRenderBuffer {
	glGenRenderbuffers(1, &_colorRenderBuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, _colorRenderBuffer);
	[_context renderbufferStorage:GL_RENDERBUFFER fromDrawable:_eaglLayer];
}

-(void)setupFrameBuffer {
	GLuint framebuffer;
	glGenFramebuffers(1, &framebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER,
							  GL_COLOR_ATTACHMENT0,
							  GL_RENDERBUFFER,
							  _colorRenderBuffer);
}

-(void)render {
	glClearColor(0, 104.0/255.0, 55.0/255.0, 1.0);
	glClear(GL_COLOR_BUFFER_BIT);
	[_context presentRenderbuffer:GL_RENDERBUFFER];
}

-(GLuint)compileShader:(NSString*)shaderName withType:(GLenum)shaderType {
	
	// 1
	NSString* shaderPath = [[NSBundle mainBundle] pathForResource:shaderName ofType:@"glsl"];
	NSError* error;
	NSString* shaderString = [NSString stringWithContentsOfFile:shaderPath
													   encoding:NSUTF8StringEncoding
														  error:&error];
	if (!shaderString) {
		NSLog(@"Error loading shader: %@", error.localizedDescription);
		exit(1);
	}
	
	// 2
	GLuint shaderHandle = glCreateShader(shaderType);
	
	// 3
	const char* shaderStringUTF8 = [shaderString UTF8String];
	int shaderStringLength = [shaderString length];
//	glShaderSource(shaderHandle, 1, &shaderString, &shaderStringLength);
	glShaderSource(shaderHandle, 1, &shaderStringUTF8, &shaderStringLength);
	
	// 4
	glCompileShader(shaderHandle);
	
	// 5
	GLint compileSuccess;
	glGetShaderiv(shaderHandle, GL_COMPILE_STATUS, &compileSuccess);
	if (compileSuccess == GL_FALSE) {
		GLchar message[256];
		glGetShaderInfoLog(shaderHandle, sizeof(message), 0, &message[0]);
		NSString* messageString = [NSString stringWithUTF8String:message];
		NSLog(@"%@", messageString);
		exit(1);
	}
	
	return shaderHandle;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
