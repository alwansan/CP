.class public final Lcom/shabakaty/downloader/q14$a$b;
.super Lcom/shabakaty/downloader/q14$a;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/q14$a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q14$a$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q14$a$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q14$a$b;->e:Lcom/shabakaty/downloader/q14$a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "under_maintenance"

    const v1, 0x7f12029b

    const v2, 0x7f12028b

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/q14$a;-><init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
