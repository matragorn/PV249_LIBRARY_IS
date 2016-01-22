# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

offices = Office.create([{name: 'Moravska Zemska Knihovna', address: 'Kounicova 65a, 601 87 Brno', contact: 'mzk@mzk.cz'},
                         {name: 'Teknologibiblioteket', address: 'Høgskoleringen 1, Trondheim', contact: 'tekhb@ub.ntnu.no'},
                         {name: 'Knihovna FI', address: '	Botanická 68a, 602 00 Brno', contact: '	knihovna@fi.muni.cz'}])

authors = Author.create([{ name: 'Charles Dickens'	},
                         { name: 'J. R. R. Tolkien' },
                         { name: 'Antoine de Saint-Exupéry' },
                         { name: 'J. K. Rowling' },
                         { name: 'Agatha Christie' },
                         { name: 'Cao Xueqin' },
                         { name: 'H. Rider Haggard' },
                         { name: 'C. S. Lewis' },
                         { name: 'Dan Brown' },
                         { name: 'Napoleon Hill' },
                         { name: '	J. D. Salinger' },
                         { name: 'Paulo Coelho' }])

books = Book.create([{ title: 'A Tale Of Two Cities',
                       description: 'A Tale of Two Cities (1859) is a novel by Charles Dickens, set in London and Paris before and during the French Revolution. The novel depicts the plight of the French peasantry demoralized by the French aristocracy in the years leading up to the revolution, the corresponding brutality demonstrated by the revolutionaries toward the former aristocrats in the early years of the revolution, and many unflattering social parallels with life in London during the same period. It follows the lives of several characters through these events. A Tale of Two Cities was published in weekly installments from April 1859 to November 1859 in Dickens\'s new literary periodical titled All the Year Round. All but three of Dickens\'s previous novels had appeared only as monthly installments. With sales of about 200 million copies, A Tale of Two Cities is the bestselling novel in history.',
                       author: authors[0],
                       office: offices[0]},
                     { title: 'The Lord of the Rings',
                       description: 'The Lord of the Rings is an epic high-fantasy novel written by English author J. R. R. Tolkien. The story began as a sequel to Tolkien\'s 1937 fantasy novel The Hobbit, but eventually developed into a much larger work. Written in stages between 1937 and 1949, The Lord of the Rings is the second best-selling novel ever written, with over 150 million copies sold.',
                       author: authors[1],
                       office: offices[1]
                     },
                     { title: 'Le Petit Prince',
                       description: 'The Little Prince (French: Le Petit Prince; French pronunciation: ​[lə.pə.tiˈpʁɛ̃s]), first published in 1943, is a novella, the most famous work of the French aristocrat, writer, poet, and pioneering aviator Antoine de Saint-Exupéry (1900–1944).',
                       author: authors[2],
                       office: offices[2]
                     },
                     { title: 'Harry Potter and the Philosopher\'s Stone',
                       description: 'Harry Potter and the Philosopher\'s Stone is the first novel in the Harry Potter series and J. K. Rowling\'s debut novel, first published in 1997 by Bloomsbury. It was published in the United States as Harry Potter and the Sorcerer\'s Stone by Scholastic Corporation in 1998. The plot follows Harry Potter, a young wizard who discovers his magical heritage as he makes close friends and a few enemies in his first year at the Hogwarts School of Witchcraft and Wizardry. With the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just a year old.',
                       author: authors[3],
                       office: offices[0]
                     },
                     { title: 'And Then There Were None',
                       description: 'And Then There Were None is a mystery novel by Agatha Christie, widely considered her masterpiece and described by her as the most difficult of her books to write. It was first published in the United Kingdom by the Collins Crime Club on 6 November 1939 as Ten Little Niggers, after the British blackface song, which serves as a major plot point. The U.S. edition was not released until December 1939 with the title changed to the last five words in the original American version of the nursery rhyme, And Then There Were None. In the U.S., it was both adapted and reprinted as Ten Little Indians.',
                       author: authors[4],
                       office: offices[1]
                     },
                     { title: 'Dream of the Red Chamber',
                       description: 'Dream of the Red Chamber (simplified Chinese: 红楼梦; traditional Chinese: 紅樓夢; pinyin: Hóng Lóu Mèng), also called The Story of the Stone (simplified Chinese: 石头记; traditional Chinese: 石頭記; pinyin: Shítóu jì), composed by Cao Xueqin, is one of China\'s Four Great Classical Novels. It was written sometime in the middle of the 18th century during the Qing Dynasty. It is considered a masterpiece of Chinese literature and is generally acknowledged to be the pinnacle of Chinese fiction. "Redology" is the field of study devoted exclusively to this work.',
                       author: authors[5],
                       office: offices[2]
                     },
                     { title: 'She: A History of Adventure',
                       description: 'She — subtitled A History of Adventure — is a novel by H. Rider Haggard (1856–1925), first serialised in The Graphic magazine from October 1886 to January 1887. She is one of the classics of imaginative literature, and one of the best-selling books of all time, with over 83 million copies sold in 44 different languages as of 1965.[1] She was extraordinarily popular upon its release and has never been out of print. According to literary historian Andrew M. Stauffer, "She has always been Rider Haggard\'s most popular and influential novel, challenged only by King Solomon\'s Mines in this regard".',
                       author: authors[6],
                       office: offices[0]
                     },
                     { title: 'The Lion, the Witch and the Wardrobe',
                       description: 'The Lion, the Witch and the Wardrobe is a high fantasy novel for children by C. S. Lewis, published by Geoffrey Bles in 1950. It\'s the first published and best known of seven novels in The Chronicles of Narnia (1950–1956). Among all the author\'s books it is also the most widely held in libraries.[2] Although it was written as well as published first in the series, it is volume two in recent editions, which are sequenced by the stories\' chronology (the first being The Magician\'s Nephew). Like the others, it was illustrated by Pauline Baynes, and her work has been retained in many later editions.',
                       author: authors[7],
                       office: offices[1]
                     },
                     { title: 'The Da Vinci Code',
                       description: 'The Da Vinci Code is a 2003 mystery-detective novel by Dan Brown. It follows symbologist Robert Langdon and cryptologist Sophie Neveu after a murder in the Louvre Museum in Paris, when they become involved in a battle between the Priory of Sion and Opus Dei over the possibility of Jesus Christ having been married to Mary Magdalene. The title of the novel refers, among other things, to the finding of the first murder victim in the Grand Gallery of the Louvre, naked and posed like Leonardo da Vinci\'s famous drawing, the Vitruvian Man, with a cryptic message written beside his body and a pentagram drawn on his chest in his own blood.',
                       author: authors[8],
                       office: offices[2]
                     },
                     { title: 'Think and Grow Rich',
                       description: 'Think and Grow Rich was written in 1937 by Napoleon Hill and is a personal development and self-improvement book. Hill was inspired by a suggestion from Scottish–American business magnate and philanthropist Andrew Carnegie. While the book\'s title implies that it deals with how to attain monetary wealth, the author explains that the philosophy taught in the book can be used to help people succeed in all lines of work, to do and be almost anything they want.',
                       author: authors[9],
                       office: offices[0]
                     },
                     { title: 'The Catcher in the Rye',
                       description: 'The Catcher in the Rye is a 1951 novel by J. D. Salinger. A controversial novel originally published for adults, it has since become popular with adolescent readers for its themes of teenage angst and alienation. It has been translated into almost all of the world\'s major languages. Around 250,000 copies are sold each year with total sales of more than 65 million books. The novel\'s protagonist Holden Caulfield has become an icon for teenage rebellion.[8] The novel also deals with complex issues of identity, belonging, loss, and connection.',
                       author: authors[10],
                       office: offices[1]
                     },
                     { title: 'O Alquimista',
                       description: 'The Alchemist (Portuguese: O Alquimista) is a novel by Paulo Coelho first published in the year 1988. Originally written in Portuguese by its Brazilian-born author, it has been translated into at least 67 languages as of October 2009.[1] An allegorical novel, The Alchemist follows a young Andalusian shepherd named Santiago in his journey to Egypt, after having a recurring dream of finding treasure there.',
                       author: authors[11],
                       office: offices[2]
                     }
                    ])

#TODO sample posts, tags & users