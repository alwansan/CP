.class public final Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;
.super Ljava/lang/Object;
.source "EmbeddedMkvSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;,
        Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CACHE_LIMIT:I = 0x30

.field private static final ID_CODEC_ID:J = 0x86L

.field private static final ID_LANGUAGE:J = 0x22b59cL

.field private static final ID_LANGUAGE_IETF:J = 0x22b59dL

.field private static final ID_NAME:J = 0x536eL

.field private static final ID_SEGMENT:J = 0x18538067L

.field private static final ID_TRACKS:J = 0x1654ae6bL

.field private static final ID_TRACK_ENTRY:J = 0xaeL

.field private static final ID_TRACK_NUMBER:J = 0xd7L

.field private static final ID_TRACK_TYPE:J = 0x83L

.field private static final LABEL_PREFIX:Ljava/lang/String; = "embedded_label:"

.field private static final META_TITLE:Ljava/util/regex/Pattern;

.field private static final STREAM:Ljava/util/regex/Pattern;

.field private static final SUBTITLE_CLASS:Ljava/lang/String; = "com.shabakaty.cinemana.domain.models.local.Subtitle"

.field private static final TRACK_TYPE_SUBTITLE:J = 0x11L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    const-string v0, "Stream #\\d+:\\d+(?:\\(([^)]+)\\))?(?:\\[[^]]+\\])?:\\s*Subtitle:\\s*([^,\\s]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->STREAM:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "^\\s*title\\s*:\\s*(.+?)\\s*$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->META_TITLE:Ljava/util/regex/Pattern;

    .line 47
    new-instance v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x31

    invoke-direct {v0, v3, v1, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$1;-><init>(IFZ)V

    sput-object v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->appendWithPlayer(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static appendWithPlayer(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 8

    .line 90
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_0
    if-nez p1, :cond_1

    return-object p2

    .line 96
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanPlayer(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 97
    nop

    .line 98
    const-string v0, ""

    .line 99
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PROBE128 chosen=player tracks="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    if-eqz p0, :cond_4

    .line 102
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->resolve(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->uriFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 105
    invoke-static {p1, p0, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->tracks(Ljava/io/File;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move-object v2, p1

    goto :goto_0

    .line 108
    :cond_3
    move-object v2, p1

    :cond_4
    :goto_0
    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_3

    .line 113
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 115
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    .line 116
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v3

    .line 119
    nop

    .line 120
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 121
    :cond_6
    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->nameFor(Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "embedded://mkv/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->selectorLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "embedded_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->extension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v4, v3, v1, v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->newSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7
    goto :goto_1

    .line 126
    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 127
    if-nez v2, :cond_9

    const-string p1, "player"

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 128
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CATALOG128 source=verified path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " tracks="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " exposed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    .line 129
    return-object p0

    .line 133
    :cond_a
    goto :goto_4

    .line 109
    :cond_b
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CATALOG128 empty path="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return-object p2

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CATALOG128 error="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    .line 134
    :goto_4
    return-object p2
.end method

.method static choose(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 339
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->quality(Ljava/util/List;)I

    move-result v0

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->quality(Ljava/util/List;)I

    move-result v1

    .line 342
    if-le v1, v0, :cond_2

    return-object p1

    .line 343
    :cond_2
    if-ne v1, v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    return-object p1

    .line 344
    :cond_3
    return-object p0

    .line 340
    :cond_4
    :goto_0
    return-object p1

    .line 339
    :cond_5
    :goto_1
    if-nez p0, :cond_6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    return-object p0
.end method

.method private static copy(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    new-instance v8, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    iget v3, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    iget-object v4, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->language:Ljava/lang/String;

    iget-object v5, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    iget-object v6, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->codec:Ljava/lang/String;

    iget-object v7, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->source:Ljava/lang/String;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static dedupeExact(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->codec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static describe(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 404
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    iget v3, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->index:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->codec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->source:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "[]"

    return-object p0
.end method

.method public static displayName(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 140
    const-string p0, "embedded_label:"

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->stringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 142
    :catchall_0
    move-exception p0

    :cond_0
    nop

    .line 143
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findFfmpeg(Ljava/lang/Object;)Ljava/io/File;
    .locals 4

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getApplicationInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "nativeLibraryDir"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "libffmpeg.so"

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object v1

    :catchall_0
    move-exception p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 398
    nop

    :goto_0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 399
    nop

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static first(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 401
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 365
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getString"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    return-object v0
.end method

.method public static inspectMatroskaLanguages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanEbml(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static inspectMatroskaTitles(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanEbml(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    iget-object v1, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static inspectPlayerLanguages(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanPlayer(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isSubtitleMime(Ljava/lang/String;)Z
    .locals 1

    .line 368
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 369
    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subrip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subtitle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ttml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cea-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pgs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vobsub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dvbsub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tx3g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static languageLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 154
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, " subtitle for "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    return-object p1

    .line 162
    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "und"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_3
    :goto_0
    const-string p0, "\u062a\u0631\u062c\u0645\u0629"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4

    .line 405
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Cinemana/work/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, ".mkv_subtitle_catalog.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static nameFor(Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 147
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "arabic"

    return-object p0

    .line 148
    :cond_0
    const-string v0, "sp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "special"

    return-object p0

    .line 149
    :cond_1
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "english"

    return-object p0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "embedded_label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->languageLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static needsFallback(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)Z"
        }
    .end annotation

    .line 333
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    const-string v2, "und"

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 335
    :cond_2
    const/4 p0, 0x0

    return p0

    .line 333
    :cond_3
    :goto_0
    return v0
.end method

.method private static newSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    const-string v0, "com.shabakaty.cinemana.domain.models.local.Subtitle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static normalizeLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 167
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 169
    const-string v0, "special subtitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "sp"

    if-nez v0, :cond_e

    const-string v0, "enhanced subtitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "improved subtitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "\u062a\u0631\u062c\u0645\u0629 \u0645\u062d\u0633\u0646\u0629"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 170
    :cond_0
    const-string v0, "english subtitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "en"

    if-nez v0, :cond_d

    const-string v0, "english"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 171
    :cond_1
    const-string v0, "arabic subtitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "ar"

    if-nez v0, :cond_c

    const-string v0, "arabic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 172
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "ara"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "arb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "ar-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 173
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "eng"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "en-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "special"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 175
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "und"

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 177
    if-lez p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0

    .line 175
    :cond_8
    :goto_0
    return-object v0

    .line 174
    :cond_9
    :goto_1
    return-object v2

    .line 173
    :cond_a
    :goto_2
    return-object v3

    .line 172
    :cond_b
    :goto_3
    return-object v4

    .line 171
    :cond_c
    :goto_4
    return-object v4

    .line 170
    :cond_d
    :goto_5
    return-object v3

    .line 169
    :cond_e
    :goto_6
    return-object v2
.end method

.method private static objectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 400
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static parseProbeLanguages(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\r?\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    sget-object v5, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->STREAM:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-direct {v5, v3, v7, v8, v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static parseSegmentTracks(Ljava/io/RandomAccessFile;J)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_4

    .line 264
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readElement(Ljava/io/RandomAccessFile;J)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    goto :goto_2

    .line 266
    :cond_0
    iget-wide v1, v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/32 v3, 0x1654ae6b

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-boolean v1, v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->parseTracks(Ljava/io/RandomAccessFile;J)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 267
    :cond_2
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 268
    :cond_3
    iget-wide v0, v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->seekSafe(Ljava/io/RandomAccessFile;JJ)V

    .line 269
    goto :goto_0

    .line 270
    :cond_4
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static parseTrackEntry(Ljava/io/RandomAccessFile;JI)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, -0x1

    const-string v5, ""

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 289
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-gez v11, :cond_9

    .line 290
    invoke-static/range {p0 .. p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readElement(Ljava/io/RandomAccessFile;J)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 291
    :cond_0
    iget-boolean v10, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_1
    iget-wide v10, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->size:J

    .line 292
    :goto_1
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/16 v14, 0x83

    const-wide/16 v16, 0x8

    cmp-long v18, v12, v14

    if-nez v18, :cond_2

    cmp-long v12, v10, v16

    if-gtz v12, :cond_2

    long-to-int v3, v10

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUInt(Ljava/io/RandomAccessFile;I)J

    move-result-wide v3

    goto :goto_2

    .line 293
    :cond_2
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/16 v14, 0xd7

    cmp-long v18, v12, v14

    if-nez v18, :cond_3

    cmp-long v12, v10, v16

    if-gtz v12, :cond_3

    long-to-int v11, v10

    invoke-static {v0, v11}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUInt(Ljava/io/RandomAccessFile;I)J

    goto :goto_2

    .line 294
    :cond_3
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/32 v14, 0x22b59c

    const-wide/16 v16, 0x100

    cmp-long v18, v12, v14

    if-nez v18, :cond_4

    cmp-long v12, v10, v16

    if-gtz v12, :cond_4

    long-to-int v5, v10

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUtf8(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 295
    :cond_4
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/32 v14, 0x22b59d

    cmp-long v18, v12, v14

    if-nez v18, :cond_5

    cmp-long v12, v10, v16

    if-gtz v12, :cond_5

    long-to-int v6, v10

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUtf8(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 296
    :cond_5
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/16 v14, 0x536e

    cmp-long v18, v12, v14

    if-nez v18, :cond_6

    const-wide/16 v12, 0x1000

    cmp-long v14, v10, v12

    if-gtz v14, :cond_6

    long-to-int v7, v10

    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUtf8(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 297
    :cond_6
    iget-wide v12, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/16 v14, 0x86

    cmp-long v18, v12, v14

    if-nez v18, :cond_7

    cmp-long v12, v10, v16

    if-gtz v12, :cond_7

    long-to-int v8, v10

    invoke-static {v0, v8}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readUtf8(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v8

    .line 298
    :cond_7
    :goto_2
    iget-boolean v10, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v10, :cond_8

    move-object v10, v7

    move-object v11, v8

    goto :goto_4

    .line 299
    :cond_8
    iget-wide v9, v9, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {v0, v9, v10, v1, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->seekSafe(Ljava/io/RandomAccessFile;JJ)V

    .line 300
    goto/16 :goto_0

    .line 301
    :cond_9
    :goto_3
    move-object v10, v7

    move-object v11, v8

    :goto_4
    const-wide/16 v0, 0x11

    cmp-long v2, v3, v0

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    move-object v9, v6

    goto :goto_5

    :cond_b
    move-object v9, v5

    .line 303
    :goto_5
    new-instance v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    const-string v12, "ebml"

    move-object v7, v0

    move/from16 v8, p3

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-object v0
.end method

.method private static parseTracks(Ljava/io/RandomAccessFile;J)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_4

    .line 276
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readElement(Ljava/io/RandomAccessFile;J)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 277
    :cond_0
    iget-wide v3, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/16 v5, 0xae

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 278
    iget-boolean v3, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v3, :cond_1

    move-wide v3, p1

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    invoke-static {p0, v3, v4, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->parseTrackEntry(Ljava/io/RandomAccessFile;JI)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_2
    iget-boolean v3, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v3, :cond_3

    goto :goto_2

    .line 282
    :cond_3
    iget-wide v2, v2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {p0, v2, v3, p1, p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->seekSafe(Ljava/io/RandomAccessFile;JJ)V

    .line 283
    goto :goto_0

    .line 284
    :cond_4
    :goto_2
    return-object v0
.end method

.method static quality(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;)I"
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    const-string v2, "und"

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->normalizedLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static readElement(Ljava/io/RandomAccessFile;J)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-ltz v3, :cond_0

    return-object v2

    .line 309
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-object v2

    .line 310
    :cond_1
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->vintLength(II)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_2

    return-object v2

    .line 311
    :cond_2
    int-to-long v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 312
    move-wide v9, v4

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    if-gez v5, :cond_3

    return-object v2

    :cond_3
    shl-long v8, v9, v4

    int-to-long v4, v5

    and-long/2addr v4, v6

    or-long v9, v8, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-gez v0, :cond_5

    return-object v2

    .line 314
    :cond_5
    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->vintLength(II)I

    move-result v1

    if-ge v1, v3, :cond_6

    return-object v2

    .line 315
    :cond_6
    rsub-int/lit8 v5, v1, 0x8

    shl-int v5, v3, v5

    .line 316
    sub-int/2addr v5, v3

    and-int/2addr v0, v5

    int-to-long v11, v0

    int-to-long v13, v5

    const/4 v0, 0x0

    cmp-long v5, v11, v13

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    .line 317
    :goto_1
    move/from16 v17, v5

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    if-gez v8, :cond_8

    return-object v2

    :cond_8
    shl-long/2addr v11, v4

    int-to-long v13, v8

    and-long/2addr v13, v6

    or-long/2addr v11, v13

    const/16 v13, 0xff

    if-ne v8, v13, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    and-int v17, v17, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 318
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    .line 319
    if-eqz v17, :cond_b

    move-wide/from16 v0, p1

    goto :goto_4

    :cond_b
    move-wide v0, v13

    move-wide v2, v11

    move-wide/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safeAdd(JJJ)J

    move-result-wide v0

    .line 320
    :goto_4
    cmp-long v2, v0, v13

    if-ltz v2, :cond_d

    cmp-long v2, v0, p1

    if-lez v2, :cond_c

    goto :goto_5

    :cond_c
    move-wide v15, v0

    goto :goto_6

    :cond_d
    :goto_5
    move-wide/from16 v15, p1

    .line 321
    :goto_6
    new-instance v0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;

    move-object v8, v0

    invoke-direct/range {v8 .. v17}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;-><init>(JJJJZ)V

    return-object v0
.end method

.method private static readUInt(Ljava/io/RandomAccessFile;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    shl-long/2addr v0, v4

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method private static readUtf8(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "\u0000"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    const-string v0, "com.shabakaty.cinemana.features.LocalMkvResolver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, ""

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resolve"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x0

    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 401
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static safeAdd(JJJ)J
    .locals 3

    .line 327
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    sub-long v0, p4, p2

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p0, p2

    return-wide p0

    :cond_1
    :goto_0
    return-wide p4
.end method

.method private static scanEbml(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    nop

    .line 242
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 243
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 244
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_4

    .line 245
    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->readElement(Ljava/io/RandomAccessFile;J)Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;

    move-result-object p0

    .line 246
    if-nez p0, :cond_0

    goto :goto_3

    .line 247
    :cond_0
    iget-wide v5, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->id:J

    const-wide/32 v7, 0x18538067

    cmp-long v1, v5, v7

    if-nez v1, :cond_2

    .line 248
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v1, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-wide v5, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 249
    :goto_2
    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->parseSegmentTracks(Ljava/io/RandomAccessFile;J)Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    goto :goto_3

    .line 252
    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->unknown:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 253
    :cond_3
    iget-wide v5, p0, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$EbmlElement;->end:J

    invoke-static {v2, v5, v6, v3, v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->seekSafe(Ljava/io/RandomAccessFile;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    goto :goto_0

    .line 258
    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 255
    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 256
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EBML128 error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :cond_5
    :goto_5
    return-object v0

    .line 258
    :catchall_3
    move-exception p0

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :cond_6
    :goto_6
    throw p0
.end method

.method private static scanFfmpeg(Ljava/io/File;Ljava/lang/Object;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->findFfmpeg(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 376
    :cond_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "-nostdin"

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const-string p1, "-hide_banner"

    const/4 v6, 0x2

    aput-object p1, v3, v6

    const-string p1, "-loglevel"

    const/4 v7, 0x3

    aput-object p1, v3, v7

    const-string p1, "info"

    const/4 v7, 0x4

    aput-object p1, v3, v7

    const-string p1, "-analyzeduration"

    const/4 v7, 0x5

    aput-object p1, v3, v7

    const-string p1, "1500000"

    const/4 v7, 0x6

    aput-object p1, v3, v7

    const-string p1, "-probesize"

    const/4 v7, 0x7

    aput-object p1, v3, v7

    const-string p1, "2097152"

    const/16 v7, 0x8

    aput-object p1, v3, v7

    const-string p1, "-i"

    const/16 v7, 0x9

    aput-object p1, v3, v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    aput-object p0, v3, p1

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 377
    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 378
    const/4 v8, 0x0

    .line 379
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 380
    sget-object v3, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->STREAM:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ffmpeg"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v4

    goto :goto_0

    .line 382
    :cond_1
    if-eqz v1, :cond_2

    sget-object v3, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->META_TITLE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;->title:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    :cond_2
    goto :goto_0

    .line 385
    :cond_3
    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 384
    :catchall_1
    move-exception p1

    move-object v1, p0

    goto :goto_2

    .line 385
    :cond_4
    :goto_1
    nop

    .line 375
    return-object v0

    .line 384
    :catchall_2
    move-exception p0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 385
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 386
    :cond_5
    :goto_3
    return-object v0

    .line 385
    :catchall_3
    move-exception p0

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :cond_6
    :goto_4
    throw p0
.end method

.method private static scanMediaExtractor(Ljava/io/File;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 350
    const-string v0, "release"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.media.MediaExtractor"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 353
    const-string v5, "setDataSource"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v2

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string p0, "getTrackCount"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string v5, "getTrackFormat"

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 355
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, p0, :cond_1

    .line 356
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "mime"

    invoke-static {v7, v9}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->formatString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->isSubtitleMime(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    const-string v9, "language"

    invoke-static {v7, v9}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->formatString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "label"

    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->formatString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "title"

    invoke-static {v7, v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->formatString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->first(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 358
    new-instance v13, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    add-int/lit8 v14, v8, 0x1

    const-string v12, "media"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v8, v14

    .line 355
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 361
    :cond_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 360
    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 361
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    :cond_2
    :goto_2
    return-object v1

    .line 361
    :catchall_2
    move-exception p0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :cond_3
    :goto_3
    throw p0
.end method

.method private static scanPlayer(Ljava/lang/Object;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 211
    move-object/from16 v0, p0

    const-string v1, "s"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    if-nez v0, :cond_0

    return-object v2

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "J"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 215
    if-nez v3, :cond_1

    return-object v2

    .line 216
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->objectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 219
    nop

    .line 220
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v7, v0, v4

    .line 221
    invoke-static {v7, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->objectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 222
    array-length v8, v7

    move v10, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v9, v7, v6

    .line 223
    const-string v11, "C"

    invoke-static {v9, v11}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->strField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "B"

    invoke-static {v9, v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->strField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->first(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 224
    invoke-static {v13}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->isSubtitleMime(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    .line 225
    :cond_2
    const-string v11, "t"

    invoke-static {v9, v11}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->strField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    invoke-static {v9, v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->strField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 227
    new-instance v15, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;

    add-int/lit8 v16, v10, 0x1

    const-string v14, "player"

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v10, v16

    .line 222
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 220
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v6, v10

    goto :goto_0

    .line 233
    :cond_4
    goto :goto_3

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLAYER128 error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    .line 234
    :goto_3
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->dedupeExact(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static seekSafe(Ljava/io/RandomAccessFile;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private static strField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 397
    const-string v0, ""

    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    return-object v0
.end method

.method private static stringField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 395
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    return-object v0
.end method

.method private static tracks(Ljava/io/File;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles$Track;",
            ">;"
        }
    .end annotation

    .line 182
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanPlayer(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 187
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PROBE128 path="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " player="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " chosen=player"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    .line 189
    return-object p2

    .line 192
    :cond_0
    sget-object p2, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->CACHE:Ljava/util/Map;

    monitor-enter p2

    .line 193
    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 194
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit p2

    return-object p0

    .line 195
    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanEbml(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->needsFallback(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanMediaExtractor(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 201
    :cond_2
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->choose(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 202
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->needsFallback(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->scanFfmpeg(Ljava/io/File;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 203
    :cond_3
    invoke-static {v4, v3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->choose(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 204
    monitor-enter p2

    :try_start_2
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PROBE128 path="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ebml="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " media="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ffmpeg="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " chosen="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->describe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->log(Ljava/lang/String;)V

    .line 206
    return-object p1

    .line 204
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 195
    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static uriFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 392
    :try_start_0
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static vintLength(II)I
    .locals 3

    .line 325
    const/16 v0, 0x80

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_1

    and-int v2, p0, v0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
