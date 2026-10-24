.class public final Lcom/shabakaty/downloader/ed3;
.super Ljava/lang/Object;
.source "PlayerBottomSheetController.kt"


# instance fields
.field public a:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/q10;

.field public d:Lcom/shabakaty/downloader/sd3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/content/Context;Lcom/shabakaty/downloader/q10;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ed3;->a:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;IF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/gn;",
            ">;IF)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pl4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(title)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v7, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ed3$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/shabakaty/downloader/ed3$a;-><init>(Lcom/shabakaty/downloader/ed3;IF)V

    .line 5
    iput-object v0, v7, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 6
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/ArrayList;ILjava/lang/String;ILcom/shabakaty/downloader/rm1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/gn;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/on$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v0, 0x7f060136

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    const/4 v6, 0x1

    .line 3
    iget-object p4, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "context.getString(titleRes)"

    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/ed3$b;

    invoke-direct {v4, p0, p5}, Lcom/shabakaty/downloader/ed3$b;-><init>(Lcom/shabakaty/downloader/ed3;Lcom/shabakaty/downloader/rm1;)V

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/pl4;

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/util/ArrayList;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/gn;",
            ">;F)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v2, 0x7f1200cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "if (speed == 1f)\n\t\t\tcont\u2026t_txt)\n\t\telse \"${speed}x\""

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/pl4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    .line 6
    iput-boolean v0, v2, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ed3$c;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ed3$c;-><init>(Lcom/shabakaty/downloader/ed3;F)V

    .line 8
    iput-object v0, v2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/util/ArrayList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/gn;",
            ">;II)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pl4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(title)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v7, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ed3$d;

    invoke-direct {v0, p0, p2, p3}, Lcom/shabakaty/downloader/ed3$d;-><init>(Lcom/shabakaty/downloader/ed3;II)V

    .line 5
    iput-object v0, v7, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 6
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/gn;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pl4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100005

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getQua\u2026, seekPeriod, seekPeriod)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/pl4;->a(Ljava/lang/String;)V

    .line 4
    iput-boolean v3, v7, Lcom/shabakaty/downloader/pl4;->e:Z

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ed3$e;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ed3$e;-><init>(Lcom/shabakaty/downloader/ed3;I)V

    .line 6
    iput-object v0, v7, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ed3;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    if-nez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v4, Lcom/shabakaty/downloader/q10;->f:Lcom/shabakaty/downloader/ff3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ff3;->a()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_0
    iget-object v3, v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 6
    :cond_2
    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q10;->o()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ed3;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    :cond_5
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ed3;->g(Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v1, 0x7f12014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.hide)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public final g(Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->displayName(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x77b6bf47

    if-eq v0, v1, :cond_6

    const v1, -0x5405df54

    if-eq v0, v1, :cond_4

    const v1, 0x2ff57c

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v0, 0x7f120132

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.file_txt)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "arabic"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 5
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v0, 0x7f120032

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.arabic)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "special"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 7
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v0, 0x7f120033

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.arabic_special)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    const v0, 0x7f1200e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.english)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/Subtitle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3;->c:Lcom/shabakaty/downloader/q10;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q10;->s()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v0
.end method
