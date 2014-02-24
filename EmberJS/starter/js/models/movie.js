MovieTracker.WatchedMixin = Ember.Mixin.create({
	isWatched: function(){
		var title = this.get('title');
		var watched = this.get('watched');

		return ('Has ' + title + ' been watched? ' + watched);
	}
});

MovieTracker.Movie = Ember.Object.extend(MovieTracker.WatchedMixin, {
	id: null,
	title: null,
	watched: false,
	rating: 0,
	titleAndRating: function () {
		return this.get('title') + ' has a rating of ' + this.get('rating');
	}.property('title','rating')
});

MovieTracker.ActionMovie = MovieTracker.Movie.extend({
	genre: 'action'
});