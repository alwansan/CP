.class public final Lcom/shabakaty/downloader/xc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/nb3$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lcom/shabakaty/downloader/yc5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yc5;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xc5;->b:Lcom/shabakaty/downloader/yc5;

    iput-object p2, p0, Lcom/shabakaty/downloader/xc5;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xc5;->b:Lcom/shabakaty/downloader/yc5;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/yc5;->a:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xc5;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
