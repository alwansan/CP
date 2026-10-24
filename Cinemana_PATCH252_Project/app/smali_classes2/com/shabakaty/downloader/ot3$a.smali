.class public final Lcom/shabakaty/downloader/ot3$a;
.super Lcom/shabakaty/downloader/ot3;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ot3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/ot3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ot3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ot3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ot3$a;->c:Lcom/shabakaty/downloader/ot3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ot3$a$a;->r:Lcom/shabakaty/downloader/ot3$a$a;

    const-string v1, "Boolean"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/shabakaty/downloader/ot3;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
