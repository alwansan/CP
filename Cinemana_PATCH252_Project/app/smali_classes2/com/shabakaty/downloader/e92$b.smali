.class public final Lcom/shabakaty/downloader/e92$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/me0$c<",
        "Lcom/shabakaty/downloader/e92;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/e92$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e92$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e92$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/e92$b;->r:Lcom/shabakaty/downloader/e92$b;

    .line 2
    sget v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
