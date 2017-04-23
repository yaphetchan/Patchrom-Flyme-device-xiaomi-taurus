.class public Landroid/app/Notification$CarExtender$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    .line 5587
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    .line 5586
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5599
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5600
    return-object p0
.end method

.method public build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 8

    .prologue
    .line 5656
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5657
    .local v1, "messages":[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v5, v2

    .line 5658
    .local v5, "participants":[Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 5659
    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    .line 5658
    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method

.method public setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 5646
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    .line 5647
    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 5630
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 5631
    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .prologue
    .line 5616
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    .line 5617
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 5619
    return-object p0
.end method
