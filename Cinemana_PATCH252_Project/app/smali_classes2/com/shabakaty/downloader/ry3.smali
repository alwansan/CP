.class public final Lcom/shabakaty/downloader/ry3;
.super Ljava/lang/Object;
.source "StringNumberConversionsJVM.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/mq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "[eE][+-]?"

    const-string v1, "(\\p{Digit}+)"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(\\.)?("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?)("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")?)|(\\.("

    const-string v4, ")("

    invoke-static {v2, v0, v3, v1, v4}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ")?)|(("

    const-string v4, "(0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+))"

    const-string v5, ")[pP][+-]?"

    invoke-static {v2, v0, v3, v4, v5}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\x00-\\x20]*[+-]?(NaN|Infinity|(("

    const-string v2, ")[fFdD]?))[\\x00-\\x20]*"

    .line 3
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/mq3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/mq3;-><init>(Ljava/lang/String;)V

    .line 5
    sput-object v1, Lcom/shabakaty/downloader/ry3;->a:Lcom/shabakaty/downloader/mq3;

    return-void
.end method
