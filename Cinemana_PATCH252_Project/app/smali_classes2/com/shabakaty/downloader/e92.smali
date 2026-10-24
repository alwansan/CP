.class public interface abstract Lcom/shabakaty/downloader/e92;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e92$a;,
        Lcom/shabakaty/downloader/e92$b;
    }
.end annotation


# static fields
.field public static final h:Lcom/shabakaty/downloader/e92$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/e92$b;->r:Lcom/shabakaty/downloader/e92$b;

    sput-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    return-void
.end method


# virtual methods
.method public abstract L()Z
.end method

.method public abstract b(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract p()Lcom/shabakaty/downloader/l04;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/l04<",
            "Lcom/shabakaty/downloader/e92;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start()Z
.end method

.method public abstract t(Lcom/shabakaty/downloader/tz;)Lcom/shabakaty/downloader/qz;
.end method

.method public abstract v()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/ou0;"
        }
    .end annotation
.end method
