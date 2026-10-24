.class public final Lcom/shabakaty/downloader/h56;
.super Lcom/google/android/gms/common/api/a$a;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a<",
        "Lcom/shabakaty/downloader/s57;",
        "Lcom/shabakaty/downloader/nw$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 13

    .line 1
    move-object/from16 v0, p4

    check-cast v0, Lcom/shabakaty/downloader/nw$c;

    const-string v1, "Setting the API options is required."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/s57;

    iget-object v6, v0, Lcom/shabakaty/downloader/nw$c;->r:Lcom/google/android/gms/cast/CastDevice;

    const/4 v2, 0x0

    int-to-long v7, v2

    iget-object v9, v0, Lcom/shabakaty/downloader/nw$c;->s:Lcom/shabakaty/downloader/nw$d;

    iget-object v10, v0, Lcom/shabakaty/downloader/nw$c;->t:Landroid/os/Bundle;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/shabakaty/downloader/s57;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Lcom/google/android/gms/cast/CastDevice;JLcom/shabakaty/downloader/nw$d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V

    return-object v1
.end method
