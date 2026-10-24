.class public final Lcom/shabakaty/downloader/q14$b$a;
.super Lcom/shabakaty/downloader/q14$b;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/q14$b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q14$b$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q14$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q14$b$a;->c:Lcom/shabakaty/downloader/q14$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "operational"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/q14$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
