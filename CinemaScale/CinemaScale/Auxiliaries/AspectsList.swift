//
//  AspectsList.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 21/05/24.
//

import SwiftUI

class AspectsList: ObservableObject {
    
    // temp aspect
    @Published var tappedAspect: Aspects = Aspects(
        aspectName: "NoAspect",
        icon: Image(systemName: "xmark"),
        subtitle: "This is a Subtitle",
        text: ["Dummy Text:": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis auctor interdum sapien nec eleifend. Ut sed feugiat mauris. Donec eget tristique arcu. Integer tempus vel neque a porttitor. Integer maximus erat id mi faucibus aliquet. In sit amet scele"])
    
    @Published var aspectsList: [Aspects] = [
        Aspects(
            aspectName: "Plot",
            icon: Image(systemName: "book"),
            subtitle: "The movie follows a comprehensive story arc and is plausible.",
            text: [
                "Story Arch": "A building without a blueprint will encounter significant problems, much like a movie without a clear structure. Most films address this by using a traditional three-act structure, organizing plot points and character development to ensure the story is easy to follow. Even unconventional narratives, like Quentin Tarantino’s \"Pulp Fiction\", achieve success with a strong story arc. \n\nA well-structured plot keeps the audience engaged and the story compelling. \n\n\n",
                "Plausibility": "The plot should be plausible within the film’s universe. Notice the plot doesn’t need to be rational. As James Cameron pointed out when referring to The Terminator, \"…the beauty of movies is that they don’t have to be logical. They just have to have plausibility.\" Whether based on fact or fantasy, the plot is plausible when it remains consistent with the expectations and perceptions of the film’s characters and the universe in which they reside."]),
        Aspects(
            aspectName: "Attraction",
            icon: Image(systemName: "popcorn"),
            subtitle: "The movie has an interesting premise and has entertainment value.",
            text: [
                "Premise": "The term “suspension of disbelief” was coined by the poet and philosopher Samuel Taylor Coleridge in 1817. Coleridge suggested that if a writer could create a “human interest and a semblance of truth” into a work of fiction, the audience could suspend their judgment concerning its implausibility. \n\nNo matter how well-structured and believable a plot is, it won't matter if no one is motivated to press play. George Lucas's iconic \"galaxy far, far away\" premise for Star Wars sparked intrigue and helped build a $43.3 billion franchise. A strong premise attracts audiences with an original, intriguing idea that motivates them to explore the story. \n\n\n",
                "Entertainment Value": "When we’re trying to pick which movie to watch, one of the main factors we consider is whether or not it looks entertaining. It takes a delicate balance between tension, action, and anticipation to keep us amused until the credits roll. Different movie genres use different methods to keep us entertained. Horror films like The Conjuring hold us in suspense, and keep us waiting on the edge of our seats for the next big pop-out, while brilliant comedies like Dumb and Dumber keep us on a rollercoaster of laughter, scene after scene. The bottom line is if the movie keeps us engaged throughout, it has entertainment value. It’s never a good sign if someone starts snoring."]),
        Aspects(
            aspectName: "Theme",
            icon: Image(systemName: "heart.circle"),
            subtitle: "The themes are identifiable and deeply connect.",
            text: [
                "Indentity": "What message or truth is the movie trying to convey? Are these themes easy to identify? Are they hidden? Or are they nonexistent? \n\nFor instance, Gladiator could have been just another movie about the Roman Empire. But instead, Gladiator embraced powerful themes like revenge, sorrow, pride, control, jealousy, betrayal, and the afterlife. These themes were clearly illustrated, and connected with the audience, one of the many reasons why Gladiator became such a successful fan favorite. \n\nStrong themes are identifiable, even if they can’t be identified right away, they are nonetheless present in the film.",
                "Depth": "Themes give the story its own character, and if they possess an element of depth, they call upon us to become something more. This category is among the most subjective of the ten essential elements to look for in movie reviews because themes connect with each of us differently. \n\n General speaking, in order to have depth, themes should achieve at least one of the following:\n\n  (1) teach us something new,\n\n  (2) make us think introspectively, or\n\n  (3) form an emotional connection.\n\nAn exceptional theme will accomplish all three."]),
        Aspects(
            aspectName: "Acting",
            icon: Image(systemName: "theatermasks"),
            subtitle: "The characters are multidimensional and the actor’s performance is convincing.",
            text: [
                "Characters": "Weak characters breed weak acting. However skilled the actor or actress may be, if there is little for them to draw from, they will be struggling to create a character out of thin air.\n\nThis is why characters based on novels can be more easily adapted on screen, than from a screenplay (this is often the case with the plot as well). Take the Lord of the Rings franchise for example. Peter Jackson and the actors had the unique advantage of working from J.R.R. Tolkein’s unified vision of the characters.\n\nStrong characters are multidimensional, relatable, and have the opportunity to develop during the course of the film.",
               "Performance": "Even with a solid character, the actor still has to get the job done. We should never be thinking to ourselves that the actor is trying to act like someone or something, the actor should be the character.\n\n\"Tom Hanks is Forrest Gump,\" was the tagline for the film, and for good reason. From Forrest’s gimp in his step, down to his speech impediment, Hanks truly embodied the character in his fullness.\n\nPerformances are convincing when we feel that we are watching the character in the story, not the actor portraying them."]),
        Aspects(
            aspectName: "Dialogue",
            icon: Image(systemName: "ellipsis.message"),
            subtitle: "The dialogue helps tell the story in a believable context.",
            text: [
                "Storytelling": "Dialogue should have a calculated approach to facilitate the story and reveal the characters. That doesn’t mean movies should have “talking heads” telling us exactly what’s happening on-screen. In fact, that’s worse than having no dialogue at all.\n\nThe Godfather: Part I, is a great example of using dialogue to express the characters and orchestrate the plot. In just one simple line, “I’ll make him an offer he can’t refuse,” the audience learns three things: (1) Don Corleone is a man of power and influence, (2) he puts his family first, and (3) something bad is going to happen to this \"Hollywood Big-shot.\"\n\nConstructive dialogue accomplishes the task of furthering the story, and reveals the characters to us in a memorable way.",
                "Context": "Similar to Plausibility, the dialogue should work to suspend our disbelief by consistently pulling us into the characters and their perceived world, without taking us out of its context.\n\nIf we’re set in 1776 like The Patriot, it would be wise to use dialogue that accurately represents the way people spoke at that time. In addition, characters shouldn’t speak out of the context of a given situation.\n\nFor example, it has been a growing trend in filmmaking for characters to break the “fourth wall” and acknowledge the situation at hand, either to comment on its absurdity, or get a cheap laugh from the audience. This “shock and awe” dialogue draws our attention to the fact that we are watching a movie, and not experiencing it as we should be, taking us out of the moment.\n\nDialogue is written in a believable context if it accurately reflects the situation, setting, and characters in each scene."]),
        Aspects(
            aspectName: "Cinematography",
            icon: Image(systemName: "photo.stack"),
            subtitle: "There is a consistent visual language that is enhanced by a creative use of lighting, setting and wardrobe.",
            text: [
                "Continuity": "Continuity is king. Shot selection and camera angles mix together to create a visual language that is enjoyable for the audience to watch.\n\nEven films like Cloverfield and Upgrade, which incorporated a jarring handheld camera style, were still fun to watch because the shots stayed consistent with their visual language. The audience could anticipate each frame and be fully immersed in the action.\n\nStellar cinematography utilizes creative camera work that helps tell the story within a consistent visual language that viewers can easily follow.",
                "Creativity": "A large part of cinematography is what is actually in the frame. The lighting tells us how to feel, the setting tells us where we are, and the wardrobe tells us who the characters are. If a movie were a painting, these three components would be the paint.\n\nMovies like The Wizard of Oz are known for their original use of wardrobe and setting. The attention to detail paid to each film set and each character’s costume became a large part of its timeless appeal.\n\nCrafty cinematography pushes the envelope, developing new and interesting ways of capturing a story and its characters."]),
        Aspects(
            aspectName: "Editing",
            icon: Image(systemName: "scissors"),
            subtitle: "The pace fits the film’s tone and the effects are seamlessly integrated.",
            text: [
                "Pace": "The main objective of good editing is to convey the movie’s tone. Tone is heavily shaped by the pace and choice of the edits.\n\nFilm editor, Verna Fields, was instrumental in shaping Jaws into the blockbuster horror hit that went on to scare generations out of the ocean. Her decision to keep the shark hidden from the audience built suspense and tension throughout the film, instilling true terror in our imaginations.\n\nGreat editing uses just the right pace (not one shot is out of place) to convey each scene’s tone, whether that be fear, or comedic relief.",
                "Effects (VFX/SFX)": "Visual effects (VFX) and special effects (SFX) should blend in seamlessly. We shouldn’t be blasted out of our suspension of disbelief because of a low-budget explosion. There’s a reason Sci-Fi B-Movies with low grade effects often don’t make the A-list.\n\nOne of those A-list sci-fi movies that went way beyond was Avatar. James Cameron and his team produced spectacular visual effects that wowed crowds around the globe, all while integrating the effects alongside the setting and characters in a way that looked real and believable.\n\nEffects should enhance the visuals, not take away from them in a way that discredits the movie and jolts the audience out of the experience."]),
        Aspects(
            aspectName: "Soundtrack",
            icon: Image(systemName: "hifispeaker.2"),
            subtitle: "There is an authentic sound design and the film score is in harmony with the story.",
            text: [
                "Sound Design": "Ever see a movie and you can’t even hear the dialogue? Maybe it’s you and you need to get your ears checked. Or maybe, the movie has bad sound.\n\nFor the film Saving Private Ryan, sound designer Gary Rydstrom brought the horrors of World War II back to life using real-life sounds from weapons fired during the war, like that of an M1 Garand rifle. The sound alone was enough to teleport the audience back to the sands of Omaha Beach.\n\nAn authentic sound design, both in accuracy and quality, can make or break a movie’s believability.",
                "Film Score": "The music should be in harmony with the story. One way that a movie accomplishes this is by using motifs, musical themes that coincide with each character, setting, or plot point.\n\nOne of the greatest film composers of all time, John Williams, had a supernatural ability to capture the wonder of a movie in a way that not only fit the story, but expressed it in a way that connected people on a deeper level. His impressive body of work includes Hollywood hits such as Star Wars, Harry Potter, and Jurassic Park.\n\nMemorable film scores are the ones that are in harmony with the story through the tactful use of motifs, and evoke the film’s sentiment."]),
        Aspects(
            aspectName: "Directing",
            icon: Image(systemName: "movieclapper"),
            subtitle: "The director had a uniform vision and executed the vision to its fullest potential.",
            text: [
                "Vision": "Like an architect or a songwriter, directors have their own unique vision or style that they seek to implement into their movies. It can be difficult to fully appreciate a film that does not have a uniform vision. It may seem aimless, and missing purpose.\n\nSir Alfred Hitchcock used suspense as a tool to create his unique vision in thriller classics like Psycho. He had a strong grasp on what he wanted to communicate and how to do it through each and every scene.\n\nWe know the directing lacks vision if the story, characters, and events are missing a sense of unity and direction.",
                "Execution": "What does it mean to execute a movie to its fullest potential? First, there should be zero flaws. Not a single weak line of dialogue. Not one loose end in the plotline.\n\nFrom beginning to end, our disbelief has been suspended. All ten elements were carefully executed to perfection. Classics like Steven Spielberg’s Schindler’s List represents the total and complete vision of the story and should never be remade. A film has been executed to its fullest potential when the story was so flawlessly crafted that there is simply no better way it could be told.\n\nThe last element on the list is by far the most subjective on the Cinema Scale, but serves an important role that helps us distinguish between great films, and ones that are truly magical."]),
        Aspects(
            aspectName: "It Factor",
            icon: Image(systemName: "medal"),
            subtitle: "The movie is unique and transcendent.",
            text: [
                "One-of-a-kind": "A movie is one-of-a-kind when it is original, innovative and pioneering. There’s no other movie like it.\n\nMaybe the story was completely original like The Lion King. Maybe there were groundbreaking visual effects like Avatar. Or maybe there’s more than one element that makes the film unique.\n\nWhatever it is, something about the movie elevates it to its very own rarified ground, and earns a special place in our hearts.",
                "Transcendent": "A movie is transcendent when it can’t be described in mere words. It is: \n\n(1) beyond comprehension, you can’t explain why you love it, you just do;\n\n(2) beyond the limits of ordinary experience, after watching it you have heightened emotions;\n\n(3) universally applicable or significant, it makes you feel more connected to your existence and the existence of others.\n\nWhen a movie becomes transcendent, it becomes more than just a movie, it becomes a part of our lives forever.\n\nThere you have it, ten essential elements to look for in movie reviews. I hope the Cinema Scale will go on to help create a heightened standard for film reviews everywhere. And the next time you’re wondering, “which movie should I watch?” Maybe there will be a Cinema Scale review out there to provide an answer."])
    ]
}
