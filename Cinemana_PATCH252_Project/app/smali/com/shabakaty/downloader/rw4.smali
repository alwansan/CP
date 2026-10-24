.class public Lcom/shabakaty/downloader/rw4;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/rw4;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;

    return-void
.end method
