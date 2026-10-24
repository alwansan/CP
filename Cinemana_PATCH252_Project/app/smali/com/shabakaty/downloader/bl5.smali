.class public final Lcom/shabakaty/downloader/bl5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/gt3<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lcom/shabakaty/downloader/br3$e;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3$e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/bl5;->b:Lcom/shabakaty/downloader/br3$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/shabakaty/downloader/bl5;->a:J

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bl5;->b:Lcom/shabakaty/downloader/br3$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3$e;->c:Lcom/shabakaty/downloader/br3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/bl5;->a:J

    .line 6
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->s:I

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/oh5;->o(JI)V

    :cond_0
    return-void
.end method
