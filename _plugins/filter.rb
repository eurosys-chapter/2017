module Jekyll
  module Outdated

    def outdated(input)
      now = Date.today();

      # do we have a range?
      if input.include? "-"
        infos = input.split("-");
        date_start = Date.parse(infos[0]);
        date = Date.parse(infos[1]);
        output = "#{date_start.strftime("%B %d, %Y")} to #{date.strftime("%B %d, %Y")}";
      else
        date = Date.parse(input);
        output = date.strftime("%B %d, %Y");
      end

      if now > date
        return "<span class='outdated'>%s</span>" % output;
      else
        return output;
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::Outdated)