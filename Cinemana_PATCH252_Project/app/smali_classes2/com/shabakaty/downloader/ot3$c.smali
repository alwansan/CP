.class public final Lcom/shabakaty/downloader/ot3$c;
.super Lcom/shabakaty/downloader/ot3;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ot3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/ot3$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ot3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ot3$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ot3$c;->c:Lcom/shabakaty/downloader/ot3$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ot3$c$a;->r:Lcom/shabakaty/downloader/ot3$c$a;

    const-string v1, "Unit"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/shabakaty/downloader/ot3;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
