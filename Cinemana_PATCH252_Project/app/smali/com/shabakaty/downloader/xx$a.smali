.class public final Lcom/shabakaty/downloader/xx$a;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Lcom/shabakaty/downloader/ll;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/shabakaty/downloader/ll;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xx$a;->a:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/xx$a;->b:Lcom/shabakaty/downloader/ll;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/xx$a;->c:Ljava/lang/String;

    return-void
.end method
