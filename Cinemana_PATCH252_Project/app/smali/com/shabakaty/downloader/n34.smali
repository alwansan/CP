.class public final Lcom/shabakaty/downloader/n34;
.super Ljava/lang/Object;
.source "SettingsUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/qm2;

.field public final c:Lcom/shabakaty/downloader/vy3;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/shabakaty/downloader/u24;

.field public final f:Lcom/shabakaty/downloader/pc;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/vy3;Landroid/content/Context;Lcom/shabakaty/downloader/pm4;Lcom/shabakaty/downloader/u24;Lcom/shabakaty/downloader/pc;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchDao"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeHelper"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "settingsDao"

    invoke-static {p6, p5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "applicationScope"

    invoke-static {p7, p5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n34;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n34;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/n34;->c:Lcom/shabakaty/downloader/vy3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/n34;->d:Landroid/content/Context;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/n34;->f:Lcom/shabakaty/downloader/pc;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/n34;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/m34;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/m34;

    iget v1, v0, Lcom/shabakaty/downloader/m34;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/m34;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/m34;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/m34;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/m34;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/m34;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/m34;->u:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/m34;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v0, Lcom/shabakaty/downloader/m34;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    iput-object p0, v0, Lcom/shabakaty/downloader/m34;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/m34;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/m34;->y:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/u24;->j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez p2, :cond_6

    iput-object p1, v0, Lcom/shabakaty/downloader/m34;->u:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/shabakaty/downloader/m34;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/m34;->y:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/n34;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object p0, p1

    :goto_2
    check-cast p2, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    move-object p1, p0

    :cond_6
    move-object v1, p2

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "<set-?>"

    .line 8
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, v1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/n34$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/n34$a;

    iget v1, v0, Lcom/shabakaty/downloader/n34$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n34$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n34$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n34$a;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n34$a;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    iput v3, v0, Lcom/shabakaty/downloader/n34$a;->w:I

    const-string v2, "-_GUEST_-"

    invoke-interface {p1, v2, v0}, Lcom/shabakaty/downloader/u24;->j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez p1, :cond_4

    new-instance p1, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const-string v1, "-_GUEST_-"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;I)V

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/n34$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/n34$b;

    iget v1, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/n34$b;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/n34$b;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/n34$b;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n34;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    sget-object v2, Lcom/shabakaty/downloader/gg4$c;->e:Lcom/shabakaty/downloader/gg4$c;

    iput-object p0, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v2, p1, v0}, Lcom/shabakaty/downloader/u24;->q(Lcom/shabakaty/downloader/gg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p2, v2, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    sget-object v3, Lcom/shabakaty/downloader/hg4$b;->c:Lcom/shabakaty/downloader/hg4$b;

    iput-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v3, p1, v0}, Lcom/shabakaty/downloader/u24;->h(Lcom/shabakaty/downloader/hg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_2

    return-object v1

    .line 6
    :cond_2
    :goto_2
    iget-object p2, v2, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    sget-object v3, Lcom/shabakaty/downloader/fg4$b;->c:Lcom/shabakaty/downloader/fg4$b;

    iput-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v3, p1, v0}, Lcom/shabakaty/downloader/u24;->o(Lcom/shabakaty/downloader/fg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_3
    iget-object p2, v2, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    .line 8
    sget v3, Lcom/shabakaty/downloader/y24;->a:I

    .line 9
    iput-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v3, p1, v0}, Lcom/shabakaty/downloader/u24;->a(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    :goto_4
    iget-object p2, v2, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    const/4 v3, -0x1

    iput-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v3, p1, v0}, Lcom/shabakaty/downloader/u24;->g(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_5
    iget-object p2, v2, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    const/4 v3, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/n34$b;->u:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/shabakaty/downloader/n34$b;->v:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Lcom/shabakaty/downloader/n34$b;->y:I

    invoke-interface {p2, v3, p1, v0}, Lcom/shabakaty/downloader/u24;->m(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v2

    .line 12
    :goto_6
    iget-object p2, p1, Lcom/shabakaty/downloader/n34;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/shabakaty/downloader/c60;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/c60;

    move-result-object p2

    const-string v0, "#FFFFFF"

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SUB_TEXT_COLOR"

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/c60;->e(Ljava/lang/String;I)Lcom/shabakaty/downloader/c60;

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/n34;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/shabakaty/downloader/c60;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/c60;

    move-result-object p2

    const-string v0, "#AA000000"

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SUB_EDGE_COLOR"

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/c60;->e(Ljava/lang/String;I)Lcom/shabakaty/downloader/c60;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/n34;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/shabakaty/downloader/c60;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/c60;

    move-result-object p1

    const-string p2, "#00000000"

    .line 17
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const-string v0, "SUB_BACK_COLOR"

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/c60;->e(Ljava/lang/String;I)Lcom/shabakaty/downloader/c60;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
