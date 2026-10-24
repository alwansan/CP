.class public final Lcom/shabakaty/downloader/q14$a$a;
.super Lcom/shabakaty/downloader/q14$a;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/q14$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q14$a$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q14$a$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q14$a$a;->e:Lcom/shabakaty/downloader/q14$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "major_outage"

    const v1, 0x7f12029a

    const v2, 0x7f12028a

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/q14$a;-><init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
