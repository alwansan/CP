.class public Lcom/shabakaty/downloader/iw2$b;
.super Ljava/lang/Object;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/iw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static volatile a:Lcom/shabakaty/downloader/iw2;


# direct methods
.method public static a()Lcom/shabakaty/downloader/iw2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/iw2$b;->a:Lcom/shabakaty/downloader/iw2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/iw2$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iw2$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/iw2$b;->a:Lcom/shabakaty/downloader/iw2;

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/iw2$b;->a:Lcom/shabakaty/downloader/iw2;

    return-object v0
.end method
