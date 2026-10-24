.class public final Lcom/shabakaty/downloader/u20$a;
.super Ljava/lang/Object;
.source "ClassDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/v20;

.field public final b:Lcom/shabakaty/downloader/n20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u20$a;->a:Lcom/shabakaty/downloader/v20;

    iput-object p2, p0, Lcom/shabakaty/downloader/u20$a;->b:Lcom/shabakaty/downloader/n20;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/u20$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/u20$a;->a:Lcom/shabakaty/downloader/v20;

    check-cast p1, Lcom/shabakaty/downloader/u20$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/u20$a;->a:Lcom/shabakaty/downloader/v20;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u20$a;->a:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->hashCode()I

    move-result v0

    return v0
.end method
