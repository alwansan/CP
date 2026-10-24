.class public final Lcom/shabakaty/downloader/en4;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Lcom/shabakaty/downloader/ym4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/en4;->d:Lcom/shabakaty/downloader/me0;

    .line 2
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/en4;->a:[Ljava/lang/Object;

    .line 3
    new-array p1, p2, [Lcom/shabakaty/downloader/ym4;

    iput-object p1, p0, Lcom/shabakaty/downloader/en4;->b:[Lcom/shabakaty/downloader/ym4;

    return-void
.end method
