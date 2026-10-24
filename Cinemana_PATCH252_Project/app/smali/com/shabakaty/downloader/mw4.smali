.class public final Lcom/shabakaty/downloader/mw4;
.super Ljava/lang/UnsupportedOperationException;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# instance fields
.field public final r:Lcom/shabakaty/downloader/ia1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ia1;)V
    .locals 0
    .param p1    # Lcom/shabakaty/downloader/ia1;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mw4;->r:Lcom/shabakaty/downloader/ia1;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mw4;->r:Lcom/shabakaty/downloader/ia1;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    const-string v2, "Missing "

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
