.class public final Lcom/shabakaty/downloader/q14$b$b$a;
.super Lcom/shabakaty/downloader/q14$b$b;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14$b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/q14$b$b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/q14$b$b$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q14$b$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q14$b$b$a;->e:Lcom/shabakaty/downloader/q14$b$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "degraded_performance"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/q14$b$b;-><init>(Ljava/lang/String;II)V

    return-void
.end method
