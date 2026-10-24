.class public final Lcom/shabakaty/downloader/b44;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases$settingsStateFlow$2"
    f = "SettingsUseCases.kt"
    l = {
        0xc8
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/gc4<",
        "+",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/n34;

.field public final synthetic x:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n34;",
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/b44;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    iput-object p2, p0, Lcom/shabakaty/downloader/b44;->x:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/b44;

    iget-object v0, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    iget-object v1, p0, Lcom/shabakaty/downloader/b44;->x:Lcom/shabakaty/downloader/rm1;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/b44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/b44;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/b44;

    iget-object v0, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    iget-object v1, p0, Lcom/shabakaty/downloader/b44;->x:Lcom/shabakaty/downloader/rm1;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/b44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/b44;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/u24;->d()Lcom/shabakaty/downloader/te1;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    iget-object v3, p0, Lcom/shabakaty/downloader/b44;->x:Lcom/shabakaty/downloader/rm1;

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/b44$b;

    invoke-direct {v4, p1, v1, v3}, Lcom/shabakaty/downloader/b44$b;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/b44$a;

    const/4 v5, 0x0

    invoke-direct {p1, v1, v3, v5}, Lcom/shabakaty/downloader/b44$a;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)V

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/bf1;

    invoke-direct {v1, v4, p1}, Lcom/shabakaty/downloader/bf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/b44;->w:Lcom/shabakaty/downloader/n34;

    .line 12
    iget-object v6, p1, Lcom/shabakaty/downloader/n34;->f:Lcom/shabakaty/downloader/pc;

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/b44;->v:I

    .line 14
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/nf1;->a(Lcom/shabakaty/downloader/te1;I)Lcom/shabakaty/downloader/n56;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/u70;

    invoke-direct {v1, v5}, Lcom/shabakaty/downloader/u70;-><init>(Lcom/shabakaty/downloader/e92;)V

    .line 16
    iget-object v2, p1, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/me0;

    iget-object p1, p1, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/te1;

    .line 17
    new-instance v9, Lcom/shabakaty/downloader/mf1;

    invoke-direct {v9, p1, v1, v5}, Lcom/shabakaty/downloader/mf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/t70;Lcom/shabakaty/downloader/ud0;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 18
    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/u70;->m0(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
