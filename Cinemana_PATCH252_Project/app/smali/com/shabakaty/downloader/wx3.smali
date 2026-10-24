.class public abstract Lcom/shabakaty/downloader/wx3;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wx3$a;,
        Lcom/shabakaty/downloader/wx3$b;,
        Lcom/shabakaty/downloader/wx3$c;
    }
.end annotation


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 2
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/downloader/wx3;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/shabakaty/downloader/wx3$c;
.end method

.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v0

    const-string v1, "run is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/wx3$a;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/wx3$a;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/wx3$c;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/shabakaty/downloader/wx3$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    return-object v1
.end method

.method public d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v0

    const-string v1, "run is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/wx3$b;

    invoke-direct {v7, p1, v0}, Lcom/shabakaty/downloader/wx3$b;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/wx3$c;)V

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/wx3$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v7
.end method
