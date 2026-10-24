.class public final Lcom/shabakaty/downloader/ic5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/gb0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gb0;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ic5;->b:Lcom/shabakaty/downloader/gb0;

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/ic5;->a:I

    return-void
.end method
