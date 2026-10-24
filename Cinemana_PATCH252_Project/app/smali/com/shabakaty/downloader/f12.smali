.class public final Lcom/shabakaty/downloader/f12;
.super Ljava/lang/Object;
.source "InputConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f12$a;,
        Lcom/shabakaty/downloader/f12$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/f12$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f12$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/f12;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    check-cast p1, Lcom/shabakaty/downloader/f12;

    iget-object p1, p1, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
