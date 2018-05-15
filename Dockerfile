FROM r-base

RUN mkdir npsw
COPY . npsw
WORKDIR npsw

EXPOSE 3838

CMD ["./npsw"]
