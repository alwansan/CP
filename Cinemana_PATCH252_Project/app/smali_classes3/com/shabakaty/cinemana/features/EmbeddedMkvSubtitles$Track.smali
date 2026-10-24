.class final Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;
.super Ljava/lang/Object;
.source "EmbeddedMkvSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Track"
.end annotation


# instance fields
.field codec:Ljava/lang/String;

.field final index:I

.field language:Ljava/lang/String;

.field source:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 57
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->language:Ljava/lang/String;

    invoke-static {p3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    invoke-static {p4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->codec:Ljava/lang/String;

    invoke-static {p5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->source:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method extension()Ljava/lang/String;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->codec:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "ass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ssa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 70
    :cond_1
    const-string v0, "srt"

    return-object v0

    .line 68
    :cond_2
    :goto_0
    return-object v1
.end method

.method normalizedLanguage()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->normalizeLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method selectorLanguage()Ljava/lang/String;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "und"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
