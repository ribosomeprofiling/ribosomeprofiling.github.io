FROM jekyll/jekyll

COPY --chown=jekyll:jekyll Gemfile .
#COPY --chown=jekyll:jekyll Gemfile.lock .

RUN bundle install  --clean
EXPOSE 4000
CMD ["jekyll", "serve", "--port", "4000"]