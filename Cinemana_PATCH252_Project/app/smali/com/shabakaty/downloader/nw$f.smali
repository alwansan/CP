.class public Lcom/shabakaty/downloader/nw$f;
.super Lcom/shabakaty/downloader/um5;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/um5<",
        "Lcom/shabakaty/downloader/nw$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/um5;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/ft3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n27;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/n27;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
