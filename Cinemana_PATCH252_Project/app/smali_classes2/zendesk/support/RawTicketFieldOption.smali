.class public Lzendesk/support/RawTicketFieldOption;
.super Ljava/lang/Object;
.source "RawTicketFieldOption.java"


# instance fields
.field public id:J

.field public isDefault:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "default"
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/RawTicketFieldOption;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/RawTicketFieldOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/RawTicketFieldOption;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/RawTicketFieldOption;->isDefault:Z

    return v0
.end method
