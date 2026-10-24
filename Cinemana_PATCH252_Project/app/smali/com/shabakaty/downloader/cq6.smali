.class public final Lcom/shabakaty/downloader/cq6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/shabakaty/downloader/dt6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dt6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/cq6;->d:Lcom/shabakaty/downloader/dt6;

    return-void
.end method
