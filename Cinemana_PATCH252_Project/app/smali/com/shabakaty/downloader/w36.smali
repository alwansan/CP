.class public final Lcom/shabakaty/downloader/w36;
.super Lcom/shabakaty/downloader/qv5;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/oj6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qv5;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w36;->a:Lcom/shabakaty/downloader/oj6;

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/w36;->a:Lcom/shabakaty/downloader/oj6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/oj6;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/w36;->a:Lcom/shabakaty/downloader/oj6;

    .line 1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
