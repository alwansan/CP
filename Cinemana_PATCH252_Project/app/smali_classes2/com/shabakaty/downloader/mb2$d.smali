.class public final Lcom/shabakaty/downloader/mb2$d;
.super Lcom/shabakaty/downloader/mb2;
.source "RuntimeTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/nb2$b;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nb2$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/mb2;-><init>(Lcom/shabakaty/downloader/nn0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/mb2$d;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nb2$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/mb2$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mb2$d;->b:Ljava/lang/String;

    return-object v0
.end method
