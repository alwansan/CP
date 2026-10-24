.class public abstract Lcom/shabakaty/downloader/q14$b;
.super Lcom/shabakaty/downloader/q14;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q14$b$a;,
        Lcom/shabakaty/downloader/q14$b$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/q14;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/q14$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q14$b;->b:Ljava/lang/String;

    return-object v0
.end method
