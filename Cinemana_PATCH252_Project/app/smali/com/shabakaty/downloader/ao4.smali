.class public abstract Lcom/shabakaty/downloader/ao4;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final b:Lcom/shabakaty/downloader/ao4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ao4;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/shabakaty/downloader/fm;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    sput-object v0, Lcom/shabakaty/downloader/ao4;->b:Lcom/shabakaty/downloader/ao4;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ao4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ao4;->a:Lcom/shabakaty/downloader/ao4;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/shabakaty/downloader/ao4;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/downloader/fm;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    return-object v0
.end method

.method public abstract b(Lcom/shabakaty/downloader/hm;[B)V
.end method
