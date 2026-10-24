.class public final Lcom/shabakaty/downloader/qw3;
.super Lcom/shabakaty/downloader/af2;
.source "SafeCollector.common.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ow3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ow3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qw3;->r:Lcom/shabakaty/downloader/ow3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/qw3;->r:Lcom/shabakaty/downloader/ow3;

    iget-object v1, v1, Lcom/shabakaty/downloader/ow3;->y:Lcom/shabakaty/downloader/me0;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    if-eq v0, v2, :cond_0

    if-eq p2, v1, :cond_3

    const/high16 p1, -0x80000000

    goto :goto_2

    .line 4
    :cond_0
    check-cast v1, Lcom/shabakaty/downloader/e92;

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/e92;

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    instance-of v0, p2, Lcom/shabakaty/downloader/my3;

    if-nez v0, :cond_5

    :goto_1
    if-ne p2, v1, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 7
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\tChild of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expected child of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".\n"

    const-string v0, "\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n"

    const-string v1, "\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-static {p1, p2, v0, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_5
    check-cast p2, Lcom/shabakaty/downloader/my3;

    .line 12
    iget-object p2, p2, Lcom/shabakaty/downloader/u;->t:Lcom/shabakaty/downloader/me0;

    sget-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/e92;

    goto :goto_0
.end method
