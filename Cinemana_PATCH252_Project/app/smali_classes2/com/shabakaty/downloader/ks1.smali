.class public Lcom/shabakaty/downloader/ks1;
.super Lcom/shabakaty/downloader/ag6;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lcom/shabakaty/downloader/f14;


# instance fields
.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ks1;->u:Ljava/lang/String;

    return-object v0
.end method
