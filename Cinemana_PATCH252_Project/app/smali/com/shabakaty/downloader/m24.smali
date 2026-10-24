.class public final Lcom/shabakaty/downloader/m24;
.super Lcom/shabakaty/downloader/ui4;
.source "Settings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.user.Settings$currentUserSettingsFlow$3"
    f = "Settings.kt"
    l = {
        0x4a,
        0xae
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "-",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;",
        "Ljava/lang/Throwable;",
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

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/m24;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/m24;->x:Lcom/shabakaty/downloader/n24;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/m24;

    iget-object v0, p0, Lcom/shabakaty/downloader/m24;->x:Lcom/shabakaty/downloader/n24;

    invoke-direct {p2, v0, p3}, Lcom/shabakaty/downloader/m24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, p2, Lcom/shabakaty/downloader/m24;->w:Ljava/lang/Object;

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/m24;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/m24;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/m24;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/m24;->w:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ue1;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/m24;->x:Lcom/shabakaty/downloader/n24;

    iput-object v1, p0, Lcom/shabakaty/downloader/m24;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/m24;->v:I

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/n24;->a(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/te1;

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/shabakaty/downloader/m24;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/m24;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
