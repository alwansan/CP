.class public final Lcom/shabakaty/downloader/dc4$b;
.super Lcom/shabakaty/downloader/ui4;
.source "SharingStarted.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2"
    f = "SharingStarted.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dc4;->a(Lcom/shabakaty/downloader/gc4;)Lcom/shabakaty/downloader/te1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/i54;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dc4$b;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/dc4$b;-><init>(Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/dc4$b;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dc4$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
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

    new-instance v0, Lcom/shabakaty/downloader/dc4$b;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/dc4$b;-><init>(Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/dc4$b;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/dc4$b;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/i54;

    sget-object v0, Lcom/shabakaty/downloader/i54;->r:Lcom/shabakaty/downloader/i54;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
