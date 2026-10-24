.class public final Lcom/shabakaty/downloader/kb5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/jb5;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ib5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ib5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kb5;->a:Lcom/shabakaty/downloader/ib5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kb5;->a:Lcom/shabakaty/downloader/ib5;

    iget-object v0, v0, Lcom/shabakaty/downloader/ib5;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
