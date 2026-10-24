.class public final Lcom/shabakaty/downloader/ij$j;
.super Lcom/shabakaty/downloader/ax1$a;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/ij;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ij;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ax1$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ij$j;->a:Lcom/shabakaty/downloader/ij;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ij$j;->b:I

    return-void
.end method
