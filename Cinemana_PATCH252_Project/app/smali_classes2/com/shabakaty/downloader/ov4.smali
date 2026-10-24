.class public final Lcom/shabakaty/downloader/ov4;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0$b;
.implements Lcom/shabakaty/downloader/me0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Lcom/shabakaty/downloader/me0$c<",
        "Lcom/shabakaty/downloader/ov4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ov4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ov4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ov4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ov4;->r:Lcom/shabakaty/downloader/ov4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/me0$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/me0$b$a;->a(Lcom/shabakaty/downloader/me0$b;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/me0$b;",
            ">(",
            "Lcom/shabakaty/downloader/me0$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->b(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lcom/shabakaty/downloader/me0$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;)",
            "Lcom/shabakaty/downloader/me0;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->c(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->d(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    return-object p1
.end method
