.class public final Lcom/shabakaty/downloader/a7;
.super Ljava/lang/Object;
.source "AndroidExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a7$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/a7;

.field public static final c:I

.field public static final d:I


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a7;->b:Lcom/shabakaty/downloader/a7;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    sput v1, Lcom/shabakaty/downloader/a7;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 4
    sput v0, Lcom/shabakaty/downloader/a7;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a7$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a7$b;-><init>(Lcom/shabakaty/downloader/a7$a;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/a7;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
