.class public final Lcom/shabakaty/downloader/nw$c$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nw$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/cast/CastDevice;

.field public b:Lcom/shabakaty/downloader/nw$d;

.field public c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/shabakaty/downloader/nw$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CastListener parameter cannot be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/nw$c$a;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/nw$c$a;->b:Lcom/shabakaty/downloader/nw$d;

    return-void
.end method
