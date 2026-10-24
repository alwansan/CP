.class public interface abstract Lcom/shabakaty/downloader/zj3;
.super Ljava/lang/Object;
.source "PushObserver.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/zj3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zj3;->a:Lcom/shabakaty/downloader/zj3;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILcom/shabakaty/downloader/s41;)V
.end method

.method public abstract d(ILcom/shabakaty/downloader/eo;IZ)Z
.end method
