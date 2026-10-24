.class public Lcom/shabakaty/downloader/f85$c;
.super Lcom/shabakaty/downloader/f54;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/f85;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f85;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/f54;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    return-object v0
.end method
