.class public final Lcom/shabakaty/downloader/tg4;
.super Lcom/shabakaty/downloader/ui4;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$invokeOnCompletion$1$1"
    f = "SubtitlesSettingsFragment.kt"
    l = {}
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
.field public final synthetic v:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic w:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/tg4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/tg4;->v:Lcom/shabakaty/downloader/tm1;

    iput-object p2, p0, Lcom/shabakaty/downloader/tg4;->w:Ljava/lang/Throwable;

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
    new-instance p1, Lcom/shabakaty/downloader/tg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/tg4;->v:Lcom/shabakaty/downloader/tm1;

    iget-object v1, p0, Lcom/shabakaty/downloader/tg4;->w:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/tg4;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/tg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/tg4;->v:Lcom/shabakaty/downloader/tm1;

    iget-object v1, p0, Lcom/shabakaty/downloader/tg4;->w:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/tg4;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/tg4;->v:Lcom/shabakaty/downloader/tm1;

    iget-object v0, p0, Lcom/shabakaty/downloader/tg4;->w:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
