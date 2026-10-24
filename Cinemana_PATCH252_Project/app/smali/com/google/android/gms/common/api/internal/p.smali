.class public final Lcom/google/android/gms/common/api/internal/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/gb0;

.field public final synthetic s:Lcom/google/android/gms/common/api/internal/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c$a;Lcom/shabakaty/downloader/gb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p;->s:Lcom/google/android/gms/common/api/internal/c$a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/p;->r:Lcom/shabakaty/downloader/gb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->s:Lcom/google/android/gms/common/api/internal/c$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/p;->r:Lcom/shabakaty/downloader/gb0;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/c$a;->g(Lcom/shabakaty/downloader/gb0;Ljava/lang/Exception;)V

    return-void
.end method
