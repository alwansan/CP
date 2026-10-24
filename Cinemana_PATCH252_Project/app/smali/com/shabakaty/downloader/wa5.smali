.class public final Lcom/shabakaty/downloader/wa5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/u;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/u;ILcom/google/android/gms/common/api/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/u;",
            "I",
            "Lcom/google/android/gms/common/api/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wa5;->a:Lcom/google/android/gms/common/api/internal/u;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/wa5;->b:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/wa5;->c:Lcom/google/android/gms/common/api/b;

    return-void
.end method
