`import DS from 'ember-data'`

Instructor = DS.Model.extend
  name: DS.attr "string",
    label: "Instructor Name"
    display: ["show", "index"]

  description: DS.attr "string",
    label: "About Me"
    display: ["show"]
    description: "The markdown-flavor text describing this instructor"

  externalLink: DS.attr "string",
    label: "Website"
    description: "Link to this instructor's website"
    display: ["show"]

  mugShot: DS.attr "string",
    label: "Profile Picture"
    display: ["show"]

Rory = 
  id: "rory "
  name: "Rory Miller"
  externalLink: "http://chirontraining.com/"
  mugShot: "http://violencedynamics.com/wp-content/uploads/2015/12/instructor-headshot-rory-miller.jpg"
  description: """
  “Force is a form of communication. It is the most emphatic possible way of saying ‘no’. For years my job was to say no, sometimes very emphatically, to violent people.

  “I have been a Corrections Officer, a Sergeant, a Tactical Team member and a Tactical Team Leader; I have taught corrections and enforcement personnel skills from first aid to physical defense to crisis communication and mental health. I’ve done this from my west coast home to Baghdad. So far, my life has been a blast.

  “I’m a bit scarred up, but generally happy.”
  """

Marc =
  id: "marc "
  name: "Marc MacYoung"
  externalLink: "http://nononsenseselfdefense.com/"
  mugShot: "http://violencedynamics.com/wp-content/uploads/2015/12/instructor-headshot-marc-macyoung.jpg"
  description: """
  The gang-infested streets of Los Angeles not only gave Marc MacYoung his street name “Animal,” but also firsthand experience about what does and does not work for self-defense. What he teaches is based on experience and proven reliability for surviving violence. If it didn’t work, he wouldn’t be alive to talk about it.

  He is considered by many to be one of the most analytical thinkers on the subject of surviving violence and personal safety today. He has taught police, military, martial artists and civilians around the world. His message is always the same: Hand-to-hand combat is a last ditch effort when other, more effective, preventive measures have failed.
  """

Kathy =
  id: "kathy"
  name: "Kathy Jackson"
  externalLink: "http://corneredcat.com/"
  mugShot: "http://violencedynamics.com/wp-content/uploads/2015/12/instructor-headshot-kathy-jackson-150x150.jpg"
  description: """
  “I’m a firearms instructor, a homeschool mom, a small business owner, a former magazine editor, and a freelance writer. I guess you could say I wear a lot of hats. My husband and I have been married more than 25 years, and we have five sons.

  “I’m a frequent contributor to Women & Guns Magazine, and my work has appeared in SWAT Magazine. I co-authored [Lessons from Armed America](http://www.amazon.com/Lessons-Armed-America-Kathy-Jackson/dp/1453685553), a book which presents several real-life accounts of people protecting themselves from criminals and the lessons we can learn from those situations. My most recent book is: [The Cornered Cat: A Woman’s Guide to Concealed Carry](http://www.amazon.com/Cornered-Cat-Womans-Guide-Concealed/dp/0982248792/ref=sr_1_1?ie=UTF8&qid=1314026571&sr=8-1).”
  """

Terry =
  id: "terry"
  name: "Terry Trahan"
  externalLink: "http://weaselcraft.blogspot.com/"
  mugShot: "http://violencedynamics.com/wp-content/uploads/2015/12/instructor-headshot-terry-trahan.jpg"
  description: """
  Having spent many years dealing with violence, various subcultures, and street life gives Terry Trahan a unique view on life and the dynamics of violence.

  Having a strong interest in efficient answers to violence, de-escalation, urban survival, and escape, Terry’s focus is more on the civilian end of dealing with violence, covering armed, unarmed, improvised weapons, threat assessment, awareness, and unconventional strategies.

  Terry has years of training in SouthEast Asian Martial Arts, heads the Kapatiran Suntukan Martial Arts organization, and is the lead instructor for [WeaselCraft](http://weaselcraft.blogspot.com/), his non-traditional approach to personal security, and specializes in all aspects of knives, from use, to design and function.
  """

Kaesey =
  id: "kaese"
  name: "Kasey Keckeisen"
  externalLink: "http://practicalbudo.blogspot.com/"
  mugShot: "http://violencedynamics.com/wp-content/uploads/2015/12/instructor-headshot-kasey-keckeisen.jpg"
  description: """
  Kasey Keckeisen is an experienced Police Officer, SWAT team leader, and SWAT training coordinator. Kasey Keckeisen is the United States Midwest Regional Director for the Edo Machi-Kata Taiho Jutsu organization, and the Minnesota State Director for One-On-One Control Tactics. Keckeisen Sensei Holds a 5th degree black belt in Jujutsu and is recognized as a Shihan by the International Shin Budo Association. Keckeisen Sensei also has an extensive training background in other Budo holding a 3rd degree black belt and teaching certificate from the International Yoshinkan Aikido Federation, a 1st degree black belt in Nippon Kan Aikido, and a 3rd degree black belt in Traditional Kodokan Judo.
  """
Instructor.reopenClass
  FIXTURES: [Rory, Marc, Kathy, Terry, Kaesey]

`export default Instructor`