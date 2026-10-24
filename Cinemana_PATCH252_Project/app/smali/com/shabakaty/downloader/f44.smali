.class public final Lcom/shabakaty/downloader/f44;
.super Lcom/shabakaty/downloader/ui4;
.source "SettingsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SettingsUseCases$updateLocalShowContentWithNoSubtitles$2"
    f = "SettingsUseCases.kt"
    l = {
        0x38
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
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/n34;

.field public final synthetic x:Z

.field public final synthetic y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n34;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/f44;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/f44;->w:Lcom/shabakaty/downloader/n34;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/f44;->x:Z

    iput-object p3, p0, Lcom/shabakaty/downloader/f44;->y:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/f44;

    iget-object v0, p0, Lcom/shabakaty/downloader/f44;->w:Lcom/shabakaty/downloader/n34;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/f44;->x:Z

    iget-object v2, p0, Lcom/shabakaty/downloader/f44;->y:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/f44;-><init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/f44;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance p1, Lcom/shabakaty/downloader/f44;

    iget-object v0, p0, Lcom/shabakaty/downloader/f44;->w:Lcom/shabakaty/downloader/n34;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/f44;->x:Z

    iget-object v2, p0, Lcom/shabakaty/downloader/f44;->y:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/f44;-><init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/f44;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/f44;->w:Lcom/shabakaty/downloader/n34;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/n34;->e:Lcom/shabakaty/downloader/u24;

    .line 6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/f44;->x:Z

    iget-object v3, p0, Lcom/shabakaty/downloader/f44;->y:Ljava/lang/String;

    iput v2, p0, Lcom/shabakaty/downloader/f44;->v:I

    invoke-interface {p1, v1, v3, p0}, Lcom/shabakaty/downloader/u24;->f(ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
