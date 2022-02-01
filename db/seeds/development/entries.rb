body = 
  "Velit sodales arcu iaculis venenatis. Etiam at leo. Vivamus vitae sem.\n\n" +
  "Suspendisse volutpat elit molestie orci. Suspendisse vel augue at felis tincidunt.\n\n" + 
  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus mollis dictum.\n\n" +
  "Curabitur eget nisi at lectus placerat gravida. Vivamus nulla. Donec luctus.\n\n"

%w(Taro Jiro Hana).each do |name|
  member = Member.find_by(name: name)
  0.upto(9) do |idx|
    Entry.create(
      author: member,
      title: "野球観戦 #{idx}",
      body: body,
      posted_at: 10.days.ago.adcance(days: idx),
      status: %w(draft member_only public)[idx % 3]
    )
  end
end
