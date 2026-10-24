.class public final Lcom/shabakaty/downloader/cr3$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ni5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cr3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public b:J

.field public final synthetic c:Lcom/shabakaty/downloader/cr3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cr3$d;->c:Lcom/shabakaty/downloader/cr3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/cr3$d;->b:J

    return-void
.end method


# virtual methods
.method public final j()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/cr3$d;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/cr3$d;->b:J

    return-wide v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p5, p0, Lcom/shabakaty/downloader/cr3$d;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p5, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/nw;->b:Lcom/shabakaty/downloader/nw$b;

    check-cast v0, Lcom/shabakaty/downloader/nw$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kg6;

    invoke-direct {v0, p5, p1, p2}, Lcom/shabakaty/downloader/kg6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/uy5;

    invoke-direct {p2, p0, p3, p4}, Lcom/shabakaty/downloader/uy5;-><init>(Lcom/shabakaty/downloader/cr3$d;J)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/shabakaty/downloader/gt3;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
