.class public final Lcom/shabakaty/downloader/ya4;
.super Lcom/shabakaty/downloader/z64;
.source "SsaDecoder.java"


# static fields
.field public static final s:Ljava/util/regex/Pattern;


# instance fields
.field public final n:Z

.field public final o:Lcom/shabakaty/downloader/za4;

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ab4;",
            ">;"
        }
    .end annotation
.end field

.field public q:F

.field public r:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ya4;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    const v0, -0x800001

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ya4;->q:F

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/ya4;->r:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ya4;->n:Z

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->o([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/za4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/za4;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/ya4;->o:Lcom/shabakaty/downloader/za4;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ya4;->n(Lcom/shabakaty/downloader/ka3;)V

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ya4;->n:Z

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/ya4;->o:Lcom/shabakaty/downloader/za4;

    :goto_0
    return-void
.end method

.method public static l(JLjava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static m(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method public static o(Ljava/lang/String;)J
    .locals 8

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ya4;->s:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    const/4 v6, 0x2

    .line 4
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long v0, v0, v4

    add-long/2addr v0, v6

    const/4 v2, 0x4

    .line 6
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/ka3;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lcom/shabakaty/downloader/ka3;-><init>([BI)V

    .line 4
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ya4;->n:Z

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ya4;->n(Lcom/shabakaty/downloader/ka3;)V

    .line 6
    :cond_0
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ya4;->n:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/shabakaty/downloader/ya4;->o:Lcom/shabakaty/downloader/za4;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    const-string v6, "Format:"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static {v5}, Lcom/shabakaty/downloader/za4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/za4;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v6, "Dialogue:"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "SsaDecoder"

    if-nez v4, :cond_4

    const-string v6, "Skipping dialogue line before complete format: "

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 13
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/shabakaty/downloader/md;->b(Z)V

    const/16 v6, 0x9

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget v8, v4, Lcom/shabakaty/downloader/za4;->e:I

    const-string v9, ","

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 15
    array-length v8, v6

    iget v9, v4, Lcom/shabakaty/downloader/za4;->e:I

    if-eq v8, v9, :cond_6

    const-string v6, "Skipping dialogue line with fewer columns than format: "

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_2
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 18
    :cond_6
    iget v8, v4, Lcom/shabakaty/downloader/za4;->a:I

    aget-object v8, v6, v8

    invoke-static {v8}, Lcom/shabakaty/downloader/ya4;->o(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "Skipping invalid timing: "

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v8, v11

    if-nez v13, :cond_8

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_3
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 21
    :cond_8
    iget v13, v4, Lcom/shabakaty/downloader/za4;->b:I

    aget-object v13, v6, v13

    invoke-static {v13}, Lcom/shabakaty/downloader/ya4;->o(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-nez v15, :cond_a

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    :goto_4
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 24
    :cond_a
    iget-object v5, v0, Lcom/shabakaty/downloader/ya4;->p:Ljava/util/Map;

    const/4 v10, -0x1

    if-eqz v5, :cond_b

    iget v11, v4, Lcom/shabakaty/downloader/za4;->c:I

    if-eq v11, v10, :cond_b

    .line 25
    aget-object v10, v6, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ab4;

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 26
    :goto_5
    iget v10, v4, Lcom/shabakaty/downloader/za4;->d:I

    aget-object v6, v6, v10

    .line 27
    sget-object v10, Lcom/shabakaty/downloader/ab4$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 28
    :goto_6
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    move-object/from16 p3, v3

    const/4 v3, 0x1

    if-eqz v15, :cond_f

    .line 29
    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :try_start_0
    invoke-static {v3}, Lcom/shabakaty/downloader/ab4$b;->a(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_c

    move-object v11, v15

    .line 32
    :catch_0
    :cond_c
    :try_start_1
    sget-object v15, Lcom/shabakaty/downloader/ab4$b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    .line 34
    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v3}, Lcom/shabakaty/downloader/ab4;->a(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :cond_d
    const/4 v3, -0x1

    :goto_7
    const/4 v15, -0x1

    if-eq v3, v15, :cond_e

    move v12, v3

    :catch_1
    :cond_e
    move-object/from16 v3, p3

    goto :goto_6

    .line 37
    :cond_f
    new-instance v3, Lcom/shabakaty/downloader/ab4$b;

    .line 38
    sget-object v3, Lcom/shabakaty/downloader/ab4$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\n"

    const-string v10, "\\N"

    .line 39
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "\\n"

    .line 40
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\\h"

    const-string v10, "\u00a0"

    .line 41
    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 42
    iget v6, v0, Lcom/shabakaty/downloader/ya4;->q:F

    iget v10, v0, Lcom/shabakaty/downloader/ya4;->r:F

    .line 43
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    const v28, -0x800001

    const/high16 v31, -0x80000000

    const/16 v29, 0x0

    const/high16 v30, -0x1000000

    if-eqz v5, :cond_17

    .line 44
    iget-object v3, v5, Lcom/shabakaty/downloader/ab4;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 45
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, v5, Lcom/shabakaty/downloader/ab4;->c:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 47
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v0

    move-object/from16 p2, v4

    const/16 v4, 0x21

    move-wide/from16 v34, v13

    const/4 v13, 0x0

    .line 48
    invoke-virtual {v15, v3, v13, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_10
    move-object/from16 p2, v4

    move-wide/from16 v34, v13

    .line 49
    :goto_8
    iget v0, v5, Lcom/shabakaty/downloader/ab4;->d:F

    const v3, -0x800001

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_11

    cmpl-float v4, v10, v3

    if-eqz v4, :cond_11

    div-float/2addr v0, v10

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const v0, -0x800001

    const/high16 v3, -0x80000000

    .line 50
    :goto_9
    iget-boolean v4, v5, Lcom/shabakaty/downloader/ab4;->e:Z

    if-eqz v4, :cond_12

    iget-boolean v13, v5, Lcom/shabakaty/downloader/ab4;->f:Z

    if-eqz v13, :cond_12

    .line 51
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v13, 0x3

    invoke-direct {v4, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 52
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/4 v14, 0x0

    move/from16 v16, v0

    const/16 v0, 0x21

    .line 53
    invoke-virtual {v15, v4, v14, v13, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_12
    move/from16 v16, v0

    const/4 v14, 0x0

    const/16 v0, 0x21

    if-eqz v4, :cond_13

    .line 54
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v13, 0x1

    invoke-direct {v4, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 55
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 56
    invoke-virtual {v15, v4, v14, v13, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 57
    :cond_13
    iget-boolean v4, v5, Lcom/shabakaty/downloader/ab4;->f:Z

    if-eqz v4, :cond_14

    .line 58
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v13, 0x2

    invoke-direct {v4, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 59
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 60
    invoke-virtual {v15, v4, v14, v13, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    :cond_14
    :goto_a
    iget-boolean v4, v5, Lcom/shabakaty/downloader/ab4;->g:Z

    if-eqz v4, :cond_15

    .line 62
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 63
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 64
    invoke-virtual {v15, v4, v14, v13, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    :cond_15
    iget-boolean v4, v5, Lcom/shabakaty/downloader/ab4;->h:Z

    if-eqz v4, :cond_16

    .line 66
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 67
    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v13

    .line 68
    invoke-virtual {v15, v4, v14, v13, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    const/4 v0, -0x1

    move/from16 v25, v3

    move/from16 v26, v16

    goto :goto_b

    :cond_17
    move-object/from16 p2, v4

    move-wide/from16 v34, v13

    const/4 v0, -0x1

    const/high16 v3, -0x80000000

    const v4, -0x800001

    const/high16 v25, -0x80000000

    const v26, -0x800001

    :goto_b
    if-eq v12, v0, :cond_18

    goto :goto_c

    :cond_18
    if-eqz v5, :cond_19

    .line 69
    iget v12, v5, Lcom/shabakaty/downloader/ab4;->b:I

    goto :goto_c

    :cond_19
    move v12, v0

    :goto_c
    const-string v0, "Unknown alignment: "

    const/16 v3, 0x1e

    packed-switch v12, :pswitch_data_0

    .line 70
    :pswitch_0
    invoke-static {v3, v0, v12}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 71
    :pswitch_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 72
    :pswitch_2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 73
    :pswitch_3
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 74
    :goto_d
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_4
    const/4 v4, 0x0

    :goto_e
    move-object/from16 v17, v4

    packed-switch v12, :pswitch_data_1

    .line 75
    :pswitch_5
    invoke-static {v3, v0, v12}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :pswitch_6
    const/4 v4, 0x2

    const/16 v24, 0x2

    goto :goto_10

    :pswitch_7
    const/4 v4, 0x1

    const/16 v24, 0x1

    goto :goto_10

    :pswitch_8
    const/4 v4, 0x0

    const/16 v24, 0x0

    goto :goto_10

    .line 76
    :goto_f
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_9
    const/high16 v4, -0x80000000

    const/high16 v24, -0x80000000

    :goto_10
    packed-switch v12, :pswitch_data_2

    .line 77
    :pswitch_a
    invoke-static {v3, v0, v12}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_b
    const/4 v0, 0x0

    const/16 v22, 0x0

    goto :goto_12

    :pswitch_c
    const/4 v0, 0x1

    const/16 v22, 0x1

    goto :goto_12

    :pswitch_d
    const/4 v0, 0x2

    const/16 v22, 0x2

    goto :goto_12

    .line 78
    :goto_11
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_e
    const/high16 v0, -0x80000000

    const/high16 v22, -0x80000000

    :goto_12
    if-eqz v11, :cond_1a

    const v0, -0x800001

    cmpl-float v3, v10, v0

    if-eqz v3, :cond_1a

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1a

    .line 79
    iget v0, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v6

    .line 80
    iget v3, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v10

    goto :goto_13

    .line 81
    :cond_1a
    invoke-static/range {v24 .. v24}, Lcom/shabakaty/downloader/ya4;->m(I)F

    move-result v0

    .line 82
    invoke-static/range {v22 .. v22}, Lcom/shabakaty/downloader/ya4;->m(I)F

    move-result v3

    :goto_13
    move/from16 v23, v0

    move/from16 v20, v3

    .line 83
    new-instance v0, Lcom/shabakaty/downloader/vg0;

    move-object v3, v15

    move-object v15, v0

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v18, v19

    move/from16 v27, v28

    invoke-direct/range {v15 .. v33}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    .line 84
    invoke-static {v8, v9, v2, v1}, Lcom/shabakaty/downloader/ya4;->l(JLjava/util/List;Ljava/util/List;)I

    move-result v3

    move-wide/from16 v4, v34

    .line 85
    invoke-static {v4, v5, v2, v1}, Lcom/shabakaty/downloader/ya4;->l(JLjava/util/List;Ljava/util/List;)I

    move-result v4

    :goto_14
    if-ge v3, v4, :cond_1c

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1b
    :goto_15
    move-object/from16 p3, v3

    move-object/from16 p2, v4

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    goto/16 :goto_0

    .line 87
    :cond_1d
    new-instance v0, Lcom/shabakaty/downloader/bb4;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/bb4;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final n(Lcom/shabakaty/downloader/ka3;)V
    .locals 25

    move-object/from16 v1, p0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v2, "[Script Info]"

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->c()I

    move-result v2

    if-eq v2, v3, :cond_0

    :cond_1
    const-string v2, ":"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v2, v0

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "playresx"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "playresy"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    :try_start_0
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/shabakaty/downloader/ya4;->r:F

    goto :goto_1

    .line 9
    :cond_4
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/shabakaty/downloader/ya4;->q:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_5
    const-string v2, "[V4+ Styles]"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "SsaDecoder"

    if-eqz v2, :cond_1e

    .line 11
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const/4 v8, 0x0

    move-object v9, v8

    .line 12
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->c()I

    move-result v0

    if-eq v0, v3, :cond_1d

    :cond_7
    const-string v0, "Format:"

    .line 14
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v11, ","

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v14, -0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    .line 15
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    .line 16
    :goto_3
    array-length v11, v0

    if-ge v9, v11, :cond_10

    .line 17
    aget-object v11, v0, v9

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v12, "alignment"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x7

    goto :goto_5

    :sswitch_1
    const-string v12, "fontsize"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    :cond_9
    const/4 v11, 0x6

    goto :goto_5

    :sswitch_2
    const-string v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_4

    :cond_a
    const/4 v11, 0x5

    goto :goto_5

    :sswitch_3
    const-string v12, "bold"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_4

    :cond_b
    const/4 v11, 0x4

    goto :goto_5

    :sswitch_4
    const-string v12, "primarycolour"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_4

    :cond_c
    const/4 v11, 0x3

    goto :goto_5

    :sswitch_5
    const-string v12, "strikeout"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_4

    :cond_d
    const/4 v11, 0x2

    goto :goto_5

    :sswitch_6
    const-string v12, "underline"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_4

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :sswitch_7
    const-string v12, "italic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_4

    :cond_f
    const/4 v11, 0x0

    goto :goto_5

    :goto_4
    const/4 v11, -0x1

    :goto_5
    packed-switch v11, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    move/from16 v17, v9

    goto :goto_6

    :pswitch_1
    move/from16 v19, v9

    goto :goto_6

    :pswitch_2
    move v10, v9

    goto :goto_6

    :pswitch_3
    move/from16 v20, v9

    goto :goto_6

    :pswitch_4
    move/from16 v18, v9

    goto :goto_6

    :pswitch_5
    move/from16 v23, v9

    goto :goto_6

    :pswitch_6
    move/from16 v22, v9

    goto :goto_6

    :pswitch_7
    move/from16 v21, v9

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_10
    if-eq v10, v14, :cond_6

    .line 18
    new-instance v9, Lcom/shabakaty/downloader/ab4$a;

    array-length v0, v0

    move-object v15, v9

    move/from16 v16, v10

    move/from16 v24, v0

    invoke-direct/range {v15 .. v24}, Lcom/shabakaty/downloader/ab4$a;-><init>(IIIIIIIII)V

    goto/16 :goto_2

    :cond_11
    const-string v0, "Style:"

    .line 19
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v9, :cond_13

    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 20
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_12
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 21
    :goto_7
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_13
    const-string v3, "\'"

    .line 22
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 23
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 24
    array-length v0, v11

    iget v12, v9, Lcom/shabakaty/downloader/ab4$a;->i:I

    const-string v15, "SsaStyle"

    if-eq v0, v12, :cond_14

    new-array v0, v13, [Ljava/lang/Object;

    .line 25
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    array-length v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    aput-object v10, v0, v4

    const-string v3, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 26
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 28
    :cond_14
    :try_start_1
    new-instance v4, Lcom/shabakaty/downloader/ab4;

    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->a:I

    aget-object v0, v11, v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 30
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->b:I

    if-eq v0, v14, :cond_15

    .line 31
    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->a(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    goto :goto_8

    :cond_15
    const/4 v0, -0x1

    const/16 v18, -0x1

    .line 32
    :goto_8
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->c:I

    if-eq v0, v14, :cond_16

    .line 33
    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_9

    :cond_16
    move-object/from16 v19, v8

    .line 34
    :goto_9
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->d:I

    if-eq v0, v14, :cond_17

    .line 35
    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 36
    :try_start_2
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v20, v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v12, v0

    .line 37
    :try_start_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to parse font size: \'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0, v12}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    const v0, -0x800001

    const v20, -0x800001

    .line 38
    :goto_a
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->e:I

    if-eq v0, v14, :cond_18

    aget-object v0, v11, v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    const/16 v21, 0x0

    :goto_b
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->f:I

    if-eq v0, v14, :cond_19

    aget-object v0, v11, v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    const/16 v22, 0x1

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    const/16 v22, 0x0

    :goto_c
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->g:I

    if-eq v0, v14, :cond_1a

    aget-object v0, v11, v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    const/16 v23, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    const/16 v23, 0x0

    :goto_d
    iget v0, v9, Lcom/shabakaty/downloader/ab4$a;->h:I

    if-eq v0, v14, :cond_1b

    aget-object v0, v11, v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ab4;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    const/16 v24, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    const/16 v24, 0x0

    :goto_e
    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v24}, Lcom/shabakaty/downloader/ab4;-><init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    .line 43
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    const-string v5, "Skipping malformed \'Style:\' line: \'"

    invoke-static {v4, v5, v10, v3}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    move-object v4, v8

    :goto_10
    if-eqz v4, :cond_1c

    .line 44
    iget-object v0, v4, Lcom/shabakaty/downloader/ab4;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    :goto_11
    const/16 v3, 0x5b

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 45
    :cond_1d
    iput-object v2, v1, Lcom/shabakaty/downloader/ya4;->p:Ljava/util/Map;

    goto/16 :goto_0

    :cond_1e
    const-string v2, "[V4 Styles]"

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "[V4 Styles] are not supported"

    .line 47
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const-string v2, "[Events]"

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_7
        -0x3d363934 -> :sswitch_6
        -0xb7325a4 -> :sswitch_5
        -0x43a3db2 -> :sswitch_4
        0x2e3a85 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x15d92cd0 -> :sswitch_1
        0x695fa1e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
