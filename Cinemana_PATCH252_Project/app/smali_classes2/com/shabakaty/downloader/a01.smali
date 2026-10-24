.class public final Lcom/shabakaty/downloader/a01;
.super Ljava/lang/Object;
.source "SafeCollector.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a01$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/a01$a;


# instance fields
.field public final r:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/a01$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a01$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/a01;->s:Lcom/shabakaty/downloader/a01$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a01;->r:Ljava/lang/Throwable;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/a01;->s:Lcom/shabakaty/downloader/a01$a;

    return-object v0
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
